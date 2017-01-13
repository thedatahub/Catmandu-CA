package Catmandu::Store::VKC;

use strict;
use warnings;

use Moo;
use Catmandu::Sane;

use Catmandu::Store::VKC::Bag;

with 'Catmandu::Store';

has username => (is => 'ro', required => 1);
has password => (is => 'ro', required => 1);

1;
__END__
=encoding utf-8

=head1 NAME

Catmandu::Store::VKC - Retrieve items from the L<CollectiveAccess|http://collectiveaccess.org/> instance of the L<VKC|http://www.vlaamsekunstcollectie.be/>

=head1 SYNOPSIS

    # From the command line
    catmandu export CA to YAML --id 1234 --username demo --password demo

    # From a Catmandu Fix
    lookup_in_store(
      object_id,
      CA,
      username: demo,
      password: demo
    )

    # From Perl code
    use Catmandu;

    my $store = Catmandu->store('CA',
        username => 'demo',
        password => 'demo',
    )->bag;

    my $item = $store->get('1234');


=head1 DESCRIPTION

A Catmandu::Store::VKC is Perl package that can query the L<CollectiveAccess|http://collectiveaccess.org> instance of the L<VKC|http://www.vlaamsekunstcollectie.be/>.
It functions identically to L<Catmandu::Store::CA>, but does not require the C<url> parameter to be set.

At the moment, only C<get> is supported.

=head1 CONFIGURATION

=head2 username

Name of a user that can be used to query the API. If you want to store
items in the CA instance, it must have the necessary rights.

=head2 password

Password for the user.

=head1 METHODS

=head2 new(%configuration)

Create a new Catmandu::Store::CA

=head2 get($id)

Retrieve a CA record given an identifier. This returns whatever
the CA administrator designated as the "summary" of the record.

=head2 add()

Not supported

=head2 delete()

Not supported

=head2 each()

Not supported

=head1 AUTHOR

Pieter De Praetere E<lt>pieter at packed.beE<gt>

=head1 COPYRIGHT

Copyright 2017- PACKED vzw

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catmandu>
L<Catmandu::Store::CA>
L<Catmandu::CA::API>

=cut
