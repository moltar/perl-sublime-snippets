# dbic:int
# [int] DBIx::Class
# source.perl

#--------------------------------------------------------------------------#
# ${1:column_name}
#--------------------------------------------------------------------------#

=head2 $1()

=cut

column $1 => {
    data_type    => 'int',
    is_nullable  => ${2:0},
    is_numeric   => 1,
    extra        => { unsigned => 1 },
};$3