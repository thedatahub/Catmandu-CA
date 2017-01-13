use strict;
use Test::More;

my @pkgs = qw (
    Catmandu::CA::API
    Catmandu::CA::API::Login
    Catmandu::CA::API::QueryBuilder
    Catmandu::CA::API::Request
    Catmandu::Store::VKC::Bag
    Catmandu::Store::VKC
    Catmandu::CA
);

require_ok $_ for @pkgs;

done_testing 6;
