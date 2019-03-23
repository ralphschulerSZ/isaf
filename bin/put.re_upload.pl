use strict;
use warnings;

my $dir = 'C:/dev/www/isaf/public/images/gallery01/1250';

chdir $dir;
open(DAT, ">$dir/put.re.api.response.txt");

for my $f (<*.jpg>) {
	print "uploading $dir/$f ...\n";
	my $resp = qx(curl -F file=\@$dir/$f https://api.put.re/upload);
	print DAT "$resp\n";
}

close(DAT);
