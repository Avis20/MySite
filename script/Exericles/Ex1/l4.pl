#!/usr/bin/perl
use warnings;
use strict;

chomp(my $val1 = <STDIN>);
chomp(my $val2 = <STDIN>);

print $val1 + $val2 . "\n";