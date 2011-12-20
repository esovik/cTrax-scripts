#!/usr/bin/perl -w

my $dist = open(DIST, "dist.nsf");
my $distpersec = open(F, ">>distpersec.nsf");

my $counter = 0;
my $secdist = 0;

while($eachvector = <DIST>){
	$secdist = $secdist + $eachvector;
	
	if($counter == 25){
		print F "$secdist\n";
		$secdist = 0;
		$counter = 0;
	}

$counter = $counter + 1;
}
		
	