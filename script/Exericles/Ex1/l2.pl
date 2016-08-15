#!/usr/bin/perl
use warnings;
use strict;

my $pi = 3.141592;
chomp(my $R = <STDIN>);

print 2*$pi*$R."\n";