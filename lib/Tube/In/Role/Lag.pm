package Tube::In::Role::Lag;

# ABSTRACT: lag-showing role

=head1 DESCRIPTION

Input streams implementing this role can be asked for the amount of data remaining in the stream.

Amount units are implementation-specific.

=cut

use Moo::Role;

=head1 METHODS

=over

=item C<lag()>

Get stream's lag.

=cut
requires 'lag';

=back

=cut

1;
