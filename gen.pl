#!/usr/bin/env perl

use warnings;
use strict;

use Path::Tiny qw(path);
use XML::Smart;
use JSON::XS qw(encode_json);

unless (@ARGV == 2) {
    die "Need 2 arguments: templates (source) dir and snippets (dest) dir.\n";
}

my $templates = path($ARGV[0]);
unless ($templates->is_dir) {
    die "$templates is not a valid directory.\n";
}

my $snippets = path($ARGV[1]);
unless ($snippets->is_dir) {
    die "$snippets is not a valid directory.\n";
}

my $iter = $templates->iterator(
    {   recurse         => 1,
        follow_symlinks => 0,
    },
);

my %atom;
while (my $path = $iter->()) {
    if ($path->is_file) {
        print "Processing $path\n";

        my ($header, $content) = split(/\n{2}/, scalar $path->slurp, 2);
        my ($trigger, $description, $scope) = split(/\n/, $header);

        $trigger     = _clean_header($trigger);
        $description = _clean_header($description);
        $scope       = _clean_header($scope);

        my $xml = XML::Smart->new('');
        $xml->{snippet} = {
            content     => $content,
            tabTrigger  => $trigger,
            description => $description,
            scope       => $scope,
        };

        $xml->{snippet}->set_node(1);
        $xml->{snippet}{content}->set_cdata(1);
        $xml->{snippet}{tabTrigger}->set_node(1);
        $xml->{snippet}{description}->set_node(1);
        $xml->{snippet}{scope}->set_node(1);

        my $rel          = $path->relative($templates);
        my $snippet_file = $snippets->child($rel);
        my $basename     = $snippet_file->basename(qr/\.?\w*$/);
        $snippet_file
            = $snippet_file->parent->child("$basename.sublime-snippet");

        unless ($snippet_file->parent->exists) {
            $snippet_file->parent->mkpath;
        }

        $snippet_file->spew($xml->data(noheader => 1, nometagen => 1));

        ## atom snippets
        my $atom_source = join(', ', map { ".$_" } split(/\s*,\s*/, $scope));
        $atom{$atom_source}{$trigger || $description} = {
            prefix => $trigger,
            body => $content,
        };
    }
}

$snippets->child('atom.json')->spew(JSON::XS->new->pretty->encode(\%atom));

sub _clean_header {
    my $value = shift;
    return $value unless $value;
    $value =~ s{[#/]*\s*}{};
    return $value;
}