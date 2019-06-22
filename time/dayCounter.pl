#!/usr/local/bin/perl 
#use strict;
#use warnings;

### system time data
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

# adjust for local time, but how?? ,so this will work on a server

# various arrays and queries with a curious year
my @array = (
'January','February','March','April','May','June','July','August','September','October','November','December');
my @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
my @mL = (31,29,31,30,31,30,31,31,30,31,30,31);
my @days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);
my $Cyear = ($year-100)+2000;

# print date from system
print "$months[$mon] $mday $days[$wday] $Cyear\n";

# say number of day(s) remaining this month
my $num = $mL[$mon] - $mday;
if($num != 1){
    print "$num days remaining in @array[$mon]\n";
} else {
    print "$num day remaining in @array[$mon]\n";
}

# set these variables to local level variables (how to make thes cont?)
my $day   = $mday;
my $month = $mon;
#my $dias  = $wday;
my $Lyear = $Cyear % 4;

#set Lyear flag for leap year
if($Lyear == 0){
    my $Lyear == true;
    #print "$Cyear, leap year\n"; 
}
else {
    $Lyear == false;
    #print "$Cyear leap year $Lyear\n";
}
# ask for user input to count a number or days ($rem)    
print "Count a Number of Days from date above ";
my $rem = <STDIN>;

# check for small number less than or equal to remaining days this month
if( $rem <= $mL[$month] - $day){

       # print result and exit
    print "\n the result is ", $rem+$day," $months[$month] \n";
    exit;
}
# otherwise increment month

# less the remaining days of this month from given number ($rem)
$rem = $rem - ($mL[$month] - $day);
                     
# check for december
if($month == 11){ $month = -1;
}
# add one to $month(next month)
$month ++;
    # check for number larger than length of next month
    while($rem > $mL[$month]){
        # minus the current month length from number $rem  
	$rem = $rem - $mL[$month];
	# check for december
	if( $month == 11){ $month = -1;
        }
	# increment month
	$month++;	
    }
# print the result and end
print $rem,"  $months[$month]";
