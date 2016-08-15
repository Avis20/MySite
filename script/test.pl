#!/usr/bin/perl
use warnings;
use strict;

my $name;
my $my = defined($name);     # true
print $my;
$name = "Ivan";
print defined($name);     # false