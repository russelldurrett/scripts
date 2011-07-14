#!usr/bin/perl

@ns = qw(A G C T);

foreach $n (@ns) {
	foreach $j (@ns) {
		foreach $k (@ns) {
			print $n;
			print $j;
			print $k; 
			print "\n";
		}
	}
}

