# dbic:varchar
# [varchar] DBIx::Class

#--------------------------------------------------------------------------#
# ${1:column_name}
#--------------------------------------------------------------------------#

=head2 $1()

=cut

column $1 => {
    data_type   => 'varchar',
    size        => ${2:255},
    is_nullable => ${3:0},
};