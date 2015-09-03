#!/usr/bin/perl

use strict;

my $count = shift || 1;

print "Running all tests $count times\n";

for ($i = 0; $i < $count; $i++) {
    print "$i: ";
    my $foo = `./runtests.pl`;
    if ($foo =~ m|All tests successful.\n|) {
	print $';
    } else {
	print "Tests Failed: $'\n";
    }
}

