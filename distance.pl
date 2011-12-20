#!/usr/bin/perl -w
#use strict; 

my $X = open(X, "x.nsf");
my $Y = open(Y, "y.nsf");
my $distfile = open(F, ">>dist.nsf");

my $countdown = `wc -l < x.nsf`; die "wc failed: $?" if $?; chomp($countdown);

## Calculate distance from x and y

my $tester = 0;

while(my $xcur = <X>, my $ycur = <Y>){

## For the first instance

unless(defined($xprev)){
	$xprev = $xcur;}
unless(defined($yprev)){
	$yprev = $ycur;}
	
## Calculate distance for straight lines between two points	
	
	$dist = sqrt((($xcur - $xprev) ** 2) + (($ycur - $yprev) ** 2));
	
	$xprev = $xcur;
	$yprev = $ycur;
	
	print F "$dist\n";

## Count remaining iterations

	if($tester == 100){
	print "$countdown\n";
	$tester = 0}
	
	$countdown = $countdown - 1;
	$tester = $tester + 1 ;
}