use strict;
use warnings;


open (DAT1, ">../tmp/menu.txt");
my @menu = <DATA>;

for my $M (@menu) {
	chomp $M;
	
	my $title = $M;
	$title =~ s/\@/, /;
	
	my $m = lc($M);
	$m =~ s/ä/ae/g;
	$m =~ s/ö/oe/g;
	$m =~ s/ü/ue/g;
	$m =~ s/ +//g;
	$m =~ s/\//_/g;
	
    my $template = $m;
	$template =~ s/\@/\./g;
	
	#system("copy C:\\dev\\www\\isaf\\views\\vorlage.tt C:\\temp\\isaf\\$template.tt");
	
	$m =~ s/\@/\;/g;
	
	my $main = $m;
	my @dmain = split(/\;/, $main);
	$main = $dmain[0];
	$main = 'act' . $main;
	
	print DAT1 "get '/$m' => sub {template '$template' => { 'title' => '$title', '$main' => 'class=\"active\"' };};\n";
}


__DATA__
Home
Fotos
Besucher / Helfer
Besucher / Helfer@Festprogramm
Besucher / Helfer@Tickets
Besucher / Helfer@Helfer
Besucher / Helfer@Besucher
Besucher / Helfer@Festgelände
Gaben
Gaben@Gaben
Gaben@Lebendpreise
Gaben@Schwingerfreunde
Gaben@Festführer
Schwingen
Schwingen@Schwingerliste
Schwingen@Programm Schwingfest
Schwingen@Ehrendamen
Schwingen@Steinstossen
Sponsoren
Sponsoren@Fest-Partner
Sponsoren@Schwing-Partner
Sponsoren@Kranz-Partner
Sponsoren@Personal-Partner
Sponsoren@Arena-Partner
Sponsoren@Ring-Partner
Sponsoren@Medien-Partner
Kontakt
Kontakt@Kontaktformular
Kontakt@Organisationskommite
Kontakt@Medienakkreditierung
Kontakt@Organigramm
Kontakt@Schwingklub Mythen
