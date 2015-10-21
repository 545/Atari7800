#!/usr/local/bin/perl

use warnings;
use strict;


printf("Pattern8: ");

my $counter = 0x1FF;
for (my $x =0; $x<511;$x++)
{
	printf("%x",$counter & 1);
	my $new_bit = ((($counter & 1) ^ (($counter & 0x10) >> 4)) << 8);
	$counter = $counter >> 1;
	$counter = $counter | $new_bit;
} 

#---------_____----_-----___-_---__--__-_____-__-_-__---_--_-___----__-



printf("\n\nPatternf: ");
my $value = 1;
my @pattern = (1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,0,1,0,0,0,0,1,0,0,1,0,1,1,0,0);
my $prev = $pattern[0];
my $trans_count = 0;
for (my $count = 1; $count<94; $count++)
{
	printf("%x",$value);
	if ($prev == (not ($pattern[$count%31])))
	{
		$trans_count++;
	}
	if ($trans_count == 3)
	{
		$value = not $value;
		$trans_count = 0;
	}
	$prev = $pattern[$count%31];

}
#----------_____---_______----__________------___------____---------___

printf("\n\nPattern2: ");

my @pattern = (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
my $prev = $pattern[0];
my $counter = 0xF;

for (my $count = 1; $count <466 ; $count++)
{
	printf("%x", $counter & 1);
	if ($pattern[$count%31] != $prev) 
	{
		my $new_bit = (($counter&1) ^ (($counter & 0x2)>>1)) << 3;
		$counter = $counter >> 1;
		$counter = $counter | $new_bit;
	}
	$prev = $pattern[$count%31];

}


printf("\n\nPattern3: ");

my $poly4 = 0xF;
my $poly5 = 0x13;
my $value = 1;

for (my $count = 0; $count < 465; $count++)
{

	my $new_bit = (($poly5&1) ^ (($poly5 & 0x4)>>2)) << 4;
	my $carry = $poly5 & 1;
	if ($carry)
	{
		my $new_bit2 = (($poly4&1) ^ (($poly4 & 0x2)>>1)) << 3;
		$value = $poly4&1;
		$poly4 = $poly4 >> 1;
		$poly4 = $poly4 | $new_bit2;
	}
	$poly5 = $poly5 >> 1;
	$poly5 = $poly5 | $new_bit;
	printf("%x",$value);
	#printf("value = %x, poly4 = %x, poly5 = %x\n",$value,$poly4,$poly5);
}