#!usr/bin/perl

#script to process large sequence files and erase all lines that contain only Ns

$infile = shift @ARGV;
$outfile = $infile . ".noN";

open (IN, $infile);
open (OUT, ">$outfile");

while (<IN>){
	if ( $_ =~ /NNNNNNNNNNNNNNN/) { next
	}
	print OUT $_ ;	
}

close IN;
close OUT;

print "Removed all N-only lines from $infile and copied to $outfile";
