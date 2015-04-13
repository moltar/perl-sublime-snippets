# has_field:select
# HTML::FH
# source.perl

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has_field '$1' => (
    type         => 'Select',
    required     => ${2:1},
    # empty_select    => 'Select...',
    # localize_labels => 0,
    # multiple        => 0,
);

#--------------------------------------------------------------------------#
# attribute: options_$1
#--------------------------------------------------------------------------#

=head2 options_$1

=cut

has options_$1 => (
    is      => 'ro',
    isa     => 'ArrayRef[HashRef]',
    lazy    => 1,
    builder => '_build_options_$1',
);

sub _build_options_$1 {
    my \$self = shift;

    return [
        map {
            {   value => \$_, label => \$_ }
        } @some_array
    ];
}
$3