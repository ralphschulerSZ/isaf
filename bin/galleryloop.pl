use strict;
use warnings;

for (1..37) {

	my $result = $_ % 4;
	my $class;
	
	if ($result == 1) {
		$class = 'one_quarter first';
	} else {
		$class = 'one_quarter';
	}

	my $nr = $_;
	$nr = sprintf("%03d", $nr);
	print "            <li class=\"$class\"><a class=\"example-image-link imgover\" href=\"/images/gallery01/1250/$nr.jpg\" data-lightbox=\"example-set\" data-title=\"\"><img class=\"example-image\" src=\"/images/gallery01/250/$nr.jpg\" alt=\"\"/></a></li>\n";

}