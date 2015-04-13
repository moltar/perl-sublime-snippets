# has_field:upload
# HTML::FH

#--------------------------------------------------------------------------#
# field: ${1:field_name}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has '+enctype' => (default => 'multipart/form-data');

has_field '$1' => (
    type         => 'Upload',
    required     => ${2:1},
    # min_size    => 1,  ## bytes
    # max_size    => 10, ## bytes
);
$3