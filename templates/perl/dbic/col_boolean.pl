# dbic:bool
# [bool] DBIx::Class
# source.perl

#--------------------------------------------------------------------------#
# ${1:column_name}
#--------------------------------------------------------------------------#

=head2 $1()

=cut

column $1 => {
    data_type           => 'boolean',
    is_nullable         => 0,
    default_value       => ${2:0},
};$3