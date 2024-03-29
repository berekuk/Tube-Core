package Tube::Out;

# ABSTRACT: output stream interface

use Moo::Role;

=head1 SYNOPSIS

    use Tube::Out;

    $out->write($item);
    $out->write_chunk(\@items);
    $out->commit;

=head1 DESCRIPTION

C<Tube::Out> is a role which every writing stream must implement.

=head1 INTERFACE

=over

=item I<write($item)>

It receives one scalar C<$item> as its argument.

At the implementor's option, it can process C<$item> immediately or keep its value until C<commit()> is called.

Return value semantics is not specified.

=cut
requires 'write';

=item I<write_chunk($chunk)>

C<write_chunk> receives an arrayref with items ordered as they would be if C<write> method was used instead.

Return value semantics is not specified.

=cut
requires 'write_chunk';

=item I<commit()>

C<commit> method can flush cached data, print statistics or do anything neccessary to make sure that writing is completed correctly.

Output stream implementation should make sure that stream is still usable after that.

=cut
requires 'commit';

=back

=head1 SEE ALSO

L<Tube::Storage> - role for persistent storages which are also output streams.

=cut

1;
