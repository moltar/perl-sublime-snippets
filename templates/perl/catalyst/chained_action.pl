# cat:chained
# Chained Action [Catalyst]
# source.perl

=head2 ${1:action}

Catalyst Controller action C<$1>.

=cut

sub $1 : Chained('$2') PathPart('$1') Args(0) {
    my (\$self, \$c) = @_;

$3

    return 1;
}