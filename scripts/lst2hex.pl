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
    #print $line . "\n";
    #print $line =~ /byte (\dA-F]*)/;
    if ($line =~ /([\dA-F]{4}):\s+([\dA-F ]*)/)
    {
    	$curr_addr = hex($1);
      if ($2 ne "")
      {
      	$data = $2;
        $data =~ s/\s//g;
        $out_str = $out_str . ("FF" x ($curr_addr-$prev_addr-int(length($prev_data)/2)));
      	$out_str = $out_str . $data;
      	$prev_addr = $curr_addr;
      	$prev_data = $data;
      }
    }
    elsif ($line =~ m/byte\s+([\dA-F,]*)/i)
    {
      $data = $1;
      $data =~ s/,//g;
      $out_str = $out_str . $data;
      $prev_addr = $curr_addr;
      $prev_data = $data;
      $curr_addr = $curr_addr + int(length($data)/2);
    }

}
$out_str =~ s/([\dA-F]{32})/$1\n/ig;
$out_str =~ s/([\dA-F]{2})/$1 /ig;
print $ofh $out_str
