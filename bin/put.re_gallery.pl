use strict;
use warnings;
use Data::Dumper;

my $dirs = 'C:/dev/www/isaf/public/images/gallery01/250';
my $dirb = 'C:/dev/www/isaf/public/images/gallery01/1250';

my %index;
my $orig;
my $link;

open(DAT, "$dirs/put.re.api.response.txt");
my @zs = <DAT>;
close(DAT);

#dirs: Dir big
for my $r (@zs) {
	chomp $r;
	if ($r =~ m/\"originalName\"\:/) {
		$orig = $r;
		$orig =~ s/originalName//;
		$orig =~ s/\"//g;
		$orig =~ s/\://;
		$orig =~ s/\,//;
		$orig =~ s/ +//;
		print "$orig\n";
	}
	
	if ($r =~ m/\"link\"\:/) {
	    $link = $r;
		$link =~ s/link//;
		$link =~ s/\"//g;
		$link =~ s/\://;
		$link =~ s/\,//;
		$link =~ s/ +//;
		print "$link\n";
		$index{$orig} = $link;
	}
}

#dirb: Dir big
open(DAT, "$dirb/put.re.api.response.txt");
my @zb = <DAT>;
close(DAT);

for my $r (@zb) {
	chomp $r;
	if ($r =~ m/\"originalName\"\:/) {
		$orig = $r;
		$orig =~ s/originalName//;
		$orig =~ s/\"//g;
		$orig =~ s/\://;
		$orig =~ s/\,//;
		$orig =~ s/ +//;
		print "$orig\n";
	}
	
	if ($r =~ m/\"link\"\:/) {
	    $link = $r;
		$link =~ s/link//;
		$link =~ s/\"//g;
		$link =~ s/\://;
		$link =~ s/\,//;
		$link =~ s/ +//;
		print "$link\n";
		
		my $slink = $index{$orig};
		my $newlink = $slink . "|" . $link;
		$index{$orig} = $newlink;
	}
}


print Dumper \%index;

my $cnt = 0;

chdir $dirs;
for my $f (<*.jpg>) {
	$cnt++;
	
	my $urls = $index{$f};
	my ($url1, $url2) = split(/\|/, $urls);
	
	my $result = $cnt % 4;
	my $class;
	
	if ($result == 1) {
		$class = 'one_quarter first';
	} else {
		$class = 'one_quarter';
	}
	
	print "            <li class=\"$class\"><a class=\"example-image-link imgover\" href=\"$url2\" data-lightbox=\"example-set\" data-title=\"\"><img class=\"example-image\" src=\"$url1\" alt=\"\"/></a></li>\n";	
}


















