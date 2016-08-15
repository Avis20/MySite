#!/usr/bin/perl
use warnings;
use strict;

chomp(my $string = <STDIN>);
chomp(my $count = <STDIN>);

while ($count > 0){
    print $string."\n";
    $count--;
}