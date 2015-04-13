# has_field:text
# HTML::FH
# source.perl

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has_field '$1' => (
    type         => 'Text',
    required     => ${2:1},
    default      => '$3',
    # size         => '',
    # minlength    => 1,
    # maxlength    => 10,
);
$4