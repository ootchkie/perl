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

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$months[$mon] $mday\n"; #$days[$wday]\n";

my @mL = (31,29,31,30,31,30,31,31,30,31,30,31);
my $rem = $mL[$mon] - $mday;

if($rem != 1){
    print "$rem days remaining in @array[$mon]\n";
} else {
    print "$rem day remaining in @array[$mon]\n";
}
# take 73 less the remainder of days this month
my $num = 73;
print "count $num days\n";

# establish value of remaining days
$num = $num - $rem;
print "$num days remaining after month $array[$mon]\n";

# Increment month if necessary (loop)?
if($num > $mL){
    $mon = $mon + 1;
    $rem = $rem - $mL[$mon];
}

# remainder after the total days of the following month

print "$mL[$mon] days in month $array[$mon]\n";

