#!/usr/bin/perl -w

# Make sure default frame rate (10) is used if user does not define a frame rate.
# change to --framerate ? (when things are better incorporated).
if(!defined $ARGV[0]){
  my $framerate = 10;
} else {
  my $framerate = $ARGV[0];
}

# Deal with all file-handles as once. Need better naming.
my $dist = open(DIST, "dist.nsf");
my $distpersec = open(F, ">>distpersec.nsf");

my $counter = 0;
my $secdist = 0;

while($eachvector = <DIST>){
	$secdist = $secdist + $eachvector;	
	if($counter == $framerate){
		print F "$secdist\n";
		$secdist = 0;
		$counter = 0;
	}
$counter = $counter + 1;
}