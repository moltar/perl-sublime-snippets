# has:builder
# [has builder] Moose

#--------------------------------------------------------------------------#
# attribute: ${1:attribute}
#--------------------------------------------------------------------------#

=head2 $1

=cut

has $1 => (
    is      => 'ro',
    isa     => '$2',
    lazy    => 1,
    builder => '_build_$1',
);

sub _build_$1 {
    my \$self = shift;

    $3

    return $4;
}
$5