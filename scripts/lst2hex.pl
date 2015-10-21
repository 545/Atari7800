#!/usr/local/bin/perl



use IO::File;
use warnings;
use strict;

my $fh = IO::File->new();
my $ofh = IO::File->new();
my $filename = $ARGV[0] || "NO INPUT FILE ENTERED"; 
my $out_filename = $ARGV[1] || "NO OUTPUT FILE ENTERED";
$fh->open("< $filename") || die "Could not open file $filename";
$ofh->open("> $out_filename") || die "Could not open file $out_filename";
my $prev_addr = 0;
my $curr_addr = 0;
my $data = "";
my $prev_data = "";
my $out_str = "";
my $count = 0;
while (<$fh>)
{
    my $line = $_;
    if ($line =~ /([\da-f]{4}) : ([\da-f]*)/)
    {
	$curr_addr = hex($1);
	$data = $2;
	#print "(" . $curr_addr . ", " .  $prev_addr . ", " . int(length($prev_data)/2) . ")\n";
        $out_str = $out_str . ("ff" x ($curr_addr-$prev_addr-int(length($prev_data)/2)));
	$out_str = $out_str . $data;
	$prev_addr = $curr_addr;
	$prev_data = $data;
    }

}
$out_str =~ s/([\da-f]{32})/$1\n/g;
$out_str =~ s/([\da-f]{2})/$1 /g;
print $ofh $out_str
