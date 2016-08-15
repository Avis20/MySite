#!/usr/bin/perl
use warnings;
use strict;

my $pi = 3.141592;
chomp(my $R = <STDIN>);
if ($R < 0){
    print "0"."\n";
} else {
    print 2*$pi*$R."\n";
}