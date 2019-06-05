#!/usr/local/bin/perl
 
my @array = (
'January','February','March','April','May','June','July','August','September','October','November','December');
my %moonths = ( #unused %hash

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

@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
#@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

# system data
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

# show todays date from system data
print "$months[$mon] $mday\n"; #$days[$wday]\n";

my @mL = (31,29,31,30,31,30,31,31,30,31,30,31);
my $num;

# establish value of remaining days in this month after today
my $rem = $mL[$mon] - $mday;
print "$rem days remaining in $array[$mon]\n";

# ask for user input to count a number or days ($num)    
print "Count a Number of Days from today: ";
$num = <STDIN>;

# Increment month if necessary (loop)?
##This is where the problems start
if($num <= $rem )
{###this is telling me I can safely add the number to the mday
    $num = $mday + $num;
    print" $num $array[$mon]"; 
}
else
{####establish value of remaining days  32 - 25  = $rem   
    $rem = $num -$rem;
    print" $rem days remaining after $array[$mon]";
}    
#while( $num !< $rem){###otherwise I need to loop this comparison until above is true
 #   $mon = $mon + 1;       
  #  $rem = $mL[$mon] -$rem;    31 - 25, 31 - 50
#}

