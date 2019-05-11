#!/usr/bin/perl 
use strict;
use warnings;



print "Enter number \n";
$number = <STDIN> ;
$month = <STDIN> ;
$res = subtract($number , $month);
print "\n and the result is $res" ;


sub subtract
{
    ($x,$y) = @_;
    $res = $y - $x ;
    return $res ;   
}
