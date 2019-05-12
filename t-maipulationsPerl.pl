#!/usr/local/bin/perl
 
@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );

my @array = (
'January','February','March','April','May','June','July','August','September','October','November','December');
my %moonths = ( #former %hash

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


#@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$months[$mon] $mday\n"; #$days[$wday]\n";

my @R = (31,29,31,30,31,30,31,31,30,31,30,31);
my $rem = $R[$mon] - $mday;
print "$rem days remaining in @array[$mon]\n";

#take 73 less the remainder of days this month
my $numX = 73 - $rem;
print "$numX \n";

#the remainder after numbX less the total days of the following month
#print "($numbX) $R[$mon + 1]\n";

