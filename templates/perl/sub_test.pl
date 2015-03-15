# sub.test
# sub test_ [Perl]

#--------------------------------------------------------------------------#
# ${1:method}
#--------------------------------------------------------------------------#

=head2 test_${1}

Tests for C<$1> method.

=cut

sub test_$1 {
    my (\$self) = @_;

    $2

    return 1;
}