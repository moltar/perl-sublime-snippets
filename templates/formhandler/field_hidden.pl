# has_field:hidden
# HTML::FH

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has_field '$1' => (
    type         => 'Hidden',
    required     => ${2:1},
    default      => '$3',
);
$4