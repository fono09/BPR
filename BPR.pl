#!/usr/bin/perl

use strict;
use warnings;

while(1){
	print "桁数 = ";
	my $l=<STDIN>;
	print "a = ";
	my $a=<STDIN>;
	print "b = ";
	my $b=<STDIN>;

	chomp $a;
	chomp $b;


	$a = oct "0b".$a;
	$b = oct "0b".$b;

	my $c = 0b0;

	my $i=0b0;
	while($b){
		
		$c ^= ($a << $i) if($b%2);
		$b = $b>>1;
		$i++;

	}

	printf("%0*b\n",$l,$c);
}

exit;










