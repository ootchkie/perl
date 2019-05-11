#!/usr/bin/perl 
use strict;
use warnings;

my $number= 8;

my $month = 5;
$month = $month - 1;

my $year = 2019;
#if($year/4){ print 'match'};

my @array =(
'January','February','March','April','May','June','July','August','September','October','November','December');

my @R = (31,29,31,30,31,30,31,31,30,31,30,31);

my %hash = (

    "Janus" => 31,
    "Febros"=> 29,
    "Mars"  => 31,
    "Venus" => 30,
    "Mai"   => 31,
    "Juno"  => 30,
    "Apollo"=> 31,
    "August"=> 31,
    "Septim"=> 30, 
    "Octiv" => 31,
    "Novis" => 30,
    "Decix" => 31,
);

print $array[$month],' ',$number, "\n", "\n";

print $R[$month],' days', "\n", "\n";

my $rem = $R[$month]-$number;
my $since = $year - 1986;

print $rem, ' days remaining in ',$array[$month],"\n";
print $since, ' years since 1986',"\n"; 
#print %hash{$array[$month]}, "\n";
#PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP#
#PERL's""the_Girl""""PERL's""the_Girl""""PERL's""the_Girl""""PERL's""""the_Girl#
#LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL#
