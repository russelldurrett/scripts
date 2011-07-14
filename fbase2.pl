#!usr/bin/perl

#find first base in chromosome file

open (IN, 'chr22.fa.formatted');

@bases = qw(a c g t n A C T G N I);

$string = <IN>;

foreach $base (@bases){
	$value = index($string, $base);
	print "Value for $base is $value\n";

}

close IN;