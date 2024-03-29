package Tube::Storage;

# ABSTRACT: interface to any storage.

use Moo::Role;
with 'Tube::Out';

=head1 SYNOPSIS

    $storage->write($line);
    $storage->write_chunk(\@lines);

    $stream = $storage->in($cursor_or_client_name);

=head1 DESCRIPTION

C<Tube::Storage> is a role which every stream storage must implement.

Objects implementing this role can act as output streams, and they can also generate associated input stream with C<in> method.

=head1 METHODS

=over

=item C<in(...)>

Constructs input stream for this storage.

Most storages are able to have several different input streams with different positions in storage.

C<in> method usually accepts either clients name (as plain string), or a more complicated cursor object which identifies an appropricate input stream.

=cut
requires 'in';

=back

=cut

1;
