# has_field:boolean
# HTML::FH

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has_field '$1' => (
    type         => 'Boolean',
    required     => ${2:0},
    default      => ${3:0},
);
$4