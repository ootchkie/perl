#!/usr/local/bin/perl 
use strict;
use warnings;

### system data
#($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

my @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
my @mL = (31,29,31,30,31,30,31,31,30,31,30,31);

my $day = 9 ;
my $month = 10 ;#November
print $day," $months[$month] \n";

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
