#!usr/bin/perl



$infile = $ARGV[0];

# print 'remove newlines from what fasta file?';
# $infile = <STDIN>;
# chomp $infile;

print " getting sequences from " . $infile . "\n\n";
our @lines;

unless (-e $infile) { die " Infile Does Not Exist " }
open (FILE, "<$infile");

while (<FILE>) {
push (@lines , $_);
}

foreach $line (@lines){
unless ($line =~ />/){chomp $line;}
if ($line =~ />/) {
	$line = "\n" . $line
}
push (@lines2, $line);	
}

print "THESE ARE THE LINES: \n";

open (OUT, ">E_Coli_Out.txt");
print @lines2;
print OUT @lines2;

