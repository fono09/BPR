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

	for(my $i=1; $b > 0b0; $i++){
		my $b_ = $b >> $i;
		$b_ = $b_ << $i;
		$c = $c^($a*($b - $b_));

		$b = $b >> $i;
		$b = $b << $i;
	}

	printf("%0*b\n",$l,$c);
}

exit;










