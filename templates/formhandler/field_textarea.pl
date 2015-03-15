# has_field:textarea
# HTML::FH

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has_field '$1' => (
    type         => 'TextArea',
    required     => ${2:1},
    default      => '$3',
    # minlength    => 1,
    # maxlength    => 10,
    # cols         => 100,
    # rows         => 10,
);
$4