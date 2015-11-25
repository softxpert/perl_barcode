#!/usr/bin/perl

use strict;
use warnings;

use GD::Barcode::Code39;


CreateBarcode('123456');
exit;


sub CreateBarcode {
   my($nr) = shift;

   my $code39 = '*' . $nr . '*';
   my $gif_name = $nr . '.gif';

   binmode(STDOUT);
   my $image = GD::Barcode::Code39->new($code39)->plot->gif;

   open(OUT, '>', $gif_name );
   print OUT $image;
   close OUT;

}

1;


