#!/usr/bin/env perl

use warnings;
use strict;

use Path::Tiny;
use XML::Smart;

my $ext       = 'pl';
my $dir       = Path::Tiny->new($ARGV[0] || '.');
my $templates = $dir->child('templates');
my $snippets  = $dir->child('snippets');

my $iter = $templates->iterator(
    {   recurse         => 1,
        follow_symlinks => 0,
    },
);

while (my $path = $iter->()) {
    if ($path->is_file && $path->basename =~ m{\.$ext$}) {
        print "Processing $path\n";

        my ($header, $content) = split(/\n{2}/, scalar $path->slurp, 2);
        my ($trigger, $description) = split(/\n/, $header);

        $trigger =~ s{#\s*}{};
        $description =~ s{#\s*}{};

        my $xml = XML::Smart->new('');
        $xml->{snippet} = {
            content     => $content,
            tabTrigger  => $trigger,
            description => $description,
            scope       => 'source.perl',
        };

        $xml->{snippet}->set_node(1);
        $xml->{snippet}{content}->set_cdata(1);
        $xml->{snippet}{tabTrigger}->set_node(1);
        $xml->{snippet}{description}->set_node(1);
        $xml->{snippet}{scope}->set_node(1);

        my $rel          = $path->relative($templates);
        my $snippet_file = $snippets->child($rel);
        my $basename     = $snippet_file->basename(".$ext");
        $snippet_file
            = $snippet_file->parent->child("$basename.sublime-snippet");

        unless ($snippet_file->parent->exists) {
            $snippet_file->parent->mkpath;
        }

        $snippet_file->spew($xml->data(noheader => 1, nometagen => 1));
    }
}
