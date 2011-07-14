#!usr/bin/perl

# Script to find first base in chromosome fileno

open (IN, 'chr22.fa');
@lines = <IN>;
@bases = qw(a c g t n A C G T N);
$line_count = 0;

foreach $line (@lines){
	$line_count++;
	print "\tLine $line_count\n";
	foreach $base (@bases){
		$value = index( $line , $base);
		print "This base $base has value of: $value \n"
	}
}

close IN;

exit;
