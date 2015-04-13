# dbic:any
# [any] DBIx::Class
# source.perl

#--------------------------------------------------------------------------#
# ${1:column_name}
#--------------------------------------------------------------------------#

=head2 $1()

=cut

column $1 => {
    data_type           => '$2',
    size                => 255,
    is_nullable         => ${3:0},
    is_numeric          => ${4:0},
    is_auto_increment   => ${5:0},
    default_value       => '',
    extra               => { unsigned => 1 },
};$6