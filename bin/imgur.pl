use strict;
no warnings;
use Data::Dumper;

#Script zum Erstellen von imgur Gallerien

#config
my $bin      = "\"C:\\Program Files\\7-Zip\\7z.exe\"";
my $zip0250  = "\"C:\\temp\\Imgur Album  001_250.zip\"";
my $zip1250  = "\"C:\\temp\\Imgur Album  001_1250.zip\"";
#end config

my @files250 = qx($bin l $zip0250);
my @order250;

for my $f (@files250) {
	chomp $f;
	my $img = substr($f, 53);
	my ($id, $jpeg) = split(/ - /, $img);
	$id = sprintf("%03d", $id);
	
	if ($jpeg gt '') {
		push (@order250, "$id|$jpeg");
	}
}

print "250\n";
print Dumper sort @order250;


my @files1250 = qx($bin l $zip1250);
my @order1250;

for my $f (@files1250) {
	chomp $f;
	my $img = substr($f, 53);
	my ($id, $jpeg) = split(/ - /, $img);
	$id = sprintf("%03d", $id);
	
	if ($jpeg gt '') {
		push (@order1250, "$id|$jpeg");
	}
}

print "1250\n";
print Dumper sort @order1250;

my $cnt = 0;
for my $i (sort @order250) {
	$cnt++;
	
	my $result = $cnt % 4;
	my $class;
	
	if ($result == 1) {
		$class = 'one_quarter first';
	} else {
		$class = 'one_quarter';
	}

	my $img1;
	my $img2;

	my ($id250, $jpeg250) = split(/\|/, $i);
	
	$img1 = "https://i.imgur.com/$jpeg250";
	
		
	my @j = grep /$id250/, @order1250;
	
		
	for (@j) {
		my ($id1250, $jpeg1250) = split(/\|/, $_);
		$img2 = "https://i.imgur.com/$jpeg1250";
	}
	
	
	
	
	print "            <li class=\"$class\"><a class=\"example-image-link imgover\" href=\"$img2\" data-lightbox=\"example-set\" data-title=\"\"><img class=\"example-image\" src=\"$img1\" alt=\"\"/></a></li>\n";	
}

