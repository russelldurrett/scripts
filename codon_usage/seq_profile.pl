#!usr/bin/perl

$sequence = "1234567890";

#uc $sequence;

@codons;

open (CODON_FILE, "<codons.txt");
while (<CODON_FILE>) {
	chomp $_;
	push(@codons, $_);
	#print $_;
}

#print "\nso then the codons loaded are:";
#print "@codons";

$seq_length = length($sequence);

print "length of sequence = ";
print $seq_length;
print "\n\n";


for ($i = 1, $seq_length >= $i, $i+3 ) {
	my $subsequence = substr($sequence, $i-1, 3);
	print $subsequence;
}

print "\n\n";