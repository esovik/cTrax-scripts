#!/usr/bin/perl -w

my $dist = open(DIST, "distpersec.nsf");
my $distpersec = open(F, ">>distpermin.nsf");

my $counter = 0;
my $mindist = 0;

while($eachvector = <DIST>){
	$mindist = $mindist + $eachvector;
	
	if($counter == 60){
		print F "$mindist\n";
		$mindist = 0;
		$counter = 0;
	}

$counter = $counter + 1;
}