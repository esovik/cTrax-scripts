$X = open(X, "x.nsf");
$Y = open(Y, "y.nsf");

$countdown = `wc -l < x.nsf`; die "wc failed: $?" if $?; chomp($countdown);

print "$countdown\n";
print "$X";
print "$Y[5]\n";
print "$X[0]\n";
print "$X[10]\n";

while(chomp($line = <X>)){
	print "$line\n";
}	