# has:default
# [has default] Moose
# source.perl

#--------------------------------------------------------------------------#
# attribute: ${1:attribute}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has $1 => (
    is       => 'ro',
    isa      => '$2',
    required => 0,
    default  => sub { $3 },
);
$4