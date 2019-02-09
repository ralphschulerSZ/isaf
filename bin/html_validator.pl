use strict;
use warnings;

my $host = 'http://127.0.0.1:3000';

for my $i (<DATA>) {
	chomp $i;

	$i = $host . $i; 
	
	#print "=>$i\n";

	my $vm = qx(weblint $i);

	for my $l (split/\n/, $vm) {
		next if $l =~ m/Unknown element/;
		next if $l =~ m/tag has no HEIGHT and WIDTH attributes/;
		next if $l =~ m/Unknown attribute \"charset\" for tag \<meta\>/;
		next if $l =~ m/Unknown attribute \"required\" for tag \<input\>/;
		next if $l =~ m/Unknown attribute \"maxlength\" for tag \<textarea\>/;
        next if $l =~ m/Unknown attribute \"data-sitekey\" for tag \<div\>/;		
		
		print "$l\n";
	}
	
}


__DATA__
/
/basicgrid
/besucher_helfer
/besucher_helfer;besucher
/besucher_helfer;festgelaende
/besucher_helfer;festprogramm
/besucher_helfer;helfer
/besucher_helfer;tickets
/fonticons
/fotos
/fotos;gallerie1
/fotos;gallerie2
/fullwidth
/gaben
/gaben;festfuehrer
/gaben;gaben
/gaben;lebendpreise
/gaben;schwingerfreunde
/gallery
/kontakt
/kontakt;kontaktformular
/kontakt;medienakkreditierung
/kontakt;okcontent
/kontakt;organigramm
/kontakt;organisationskommite
/kontakt;schwingklubmythen
/schwingen
/schwingen;ehrendamen
/schwingen;programmschwingfest
/schwingen;schwingerliste
/schwingen;steinstossen
/sidebarleft
/sidebarright
/sponsoren
/sponsoren;arena-partner
/sponsoren;fest-partner
/sponsoren;kranz-partner
/sponsoren;medien-partner
/sponsoren;personal-partner
/sponsoren;ring-partner
/sponsoren;schwing-partner
