#!/usr/bin/perl

use warnings;

open(FH, '<', 'ModeTemp.txt') or die $!;

while(<FH>){
   print $1 if $_ =~ /Columns:\s*(\d\d*)/;
}
close(FH);