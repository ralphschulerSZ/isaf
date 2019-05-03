package isaf;
use Dancer ':syntax';
use formular;
use Dancer::Plugin::Auth::Basic;

our $VERSION = '0.1';

sub genrandompic {
	my $randid = int(rand(5)) + 2;
	my $pic    = "/images/Titelbild_0$randid.jpg";
	return $pic;
}

sub genrandschwungol {
	my $randid = int(rand(3));
	my $pic    = "/images/schwung_ol$randid.jpg";
	return $pic;
}

sub genrandschwungur {
	my $randid = int(rand(5));
	my $pic    = "/images/schwung_ur$randid.jpg";
	return $pic;
}

get '/gallery' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'gallery' => { 'title' => 'ISAF2020 Gallery', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'titelbild' => $pic, 'sol' => $sol};
};
get '/infos_ok' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'INFOS_OK' => { 'title' => 'Infos OK', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/fullwidth' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'fullwidth' => { 'title' => 'ISAF2020 fullwidth', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/sidebarleft' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'sidebarleft' => { 'title' => 'ISAF2020 sidebarleft', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/sidebarright' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'sidebarright' => { 'title' => 'ISAF2020 sidebarright', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/basicgrid' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'basicgrid' => { 'title' => 'ISAF2020 basicgrid', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/fonticons' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'fonticons' => { 'title' => 'ISAF2020 fonticons', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/fotos;gallerie1' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'fotos.gallerie1' => { 'title' => 'Fotos, Gallerie 1', 'activefotos' => 'class="active"', 'titelbild' => $pic } , { layout => 'gallerie_main' };
};
get '/fotos;gallerie2' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
    template 'fotos.gallerie2' => { 'title' => 'Fotos, Gallerie 2', 'activefotos' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/' => sub {
	my $pic = "/images/Titelbild_01.jpg";
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'home' => { 'title' => 'ISAF 2020 - Innerschweizer Schwing- und &Auml;lperfest, Ibach-Schwyz', 'acthome' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/homeorig' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'homeorig' => { 'title' => 'ISAF 2020 - Innerschweizer Schwing- und &Auml;lperfest, Ibach-Schwyz', 'acthome' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/fotos' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'fotos' => { 'title' => 'Fotos - ISAF2020', 'actfotos' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/festinfos' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'festinfos' => { 'title' => 'Festinfos - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/festprogramm' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'festprogramm' => { 'title' => 'Festprogramm - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/tickets' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'tickets' => { 'title' => 'Tickets - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/helfer' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'helfer' => { 'title' => 'Helfer - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/besucher' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'besucher' => { 'title' => 'Besucher - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/festgelaende' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'festgelaende' => { 'title' => 'Festgel&auml;nde - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/gaben' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'gaben' => { 'title' => 'Gaben - ISAF2020', 'actgaben' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/lebendpreise' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'gaben.lebendpreise' => { 'title' => 'Gaben, Lebendpreise', 'actgaben' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/schwingerfreunde' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'gaben.schwingerfreunde' => { 'title' => 'Gaben, Schwingerfreunde', 'actgaben' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/festfuehrer' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'gaben.festfuehrer' => { 'title' => 'Gaben, Festf&uuml;hrer', 'actgaben' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/schwingen' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'schwingen' => { 'title' => 'Schwingen', 'actschwingen' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/schwingerliste' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'schwingen.schwingerliste' => { 'title' => 'Schwingen, Schwingerliste', 'actschwingen' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/programmschwingfest' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'schwingen.programmschwingfest' => { 'title' => 'Schwingen, Programm Schwingfest', 'actschwingen' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/ehrendamen' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'schwingen.ehrendamen' => { 'title' => 'Schwingen, Ehrendamen', 'actschwingen' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/steinstossen' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'schwingen.steinstossen' => { 'title' => 'Schwingen, Steinstossen', 'actschwingen' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/sponsoren' => sub {
	my $pic = "/images/Titelbild_01.jpg";
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren' => { 'title' => 'Sponsoren - ISAF2020', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/fest-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.fest-partner' => { 'title' => 'Sponsoren, Fest-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/schwing-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.schwing-partner' => { 'title' => 'Sponsoren, Schwing-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/kranz-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.kranz-partner' => { 'title' => 'Sponsoren, Kranz-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/personal-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.personal-partner' => { 'title' => 'Sponsoren, Personal-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/arena-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.arena-partner' => { 'title' => 'Sponsoren, Arena-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/ring-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.ring-partner' => { 'title' => 'Sponsoren, Ring-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/medien-partner' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'sponsoren.medien-partner' => { 'title' => 'Sponsoren, Medien-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/kontakt' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt' => { 'title' => 'Kontakt', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/impressum' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'impressum' => { 'title' => 'ISAF2020 - Impressum', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/kontaktformular' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt.kontaktformular' => { 'title' => 'Kontakt, Kontaktformular', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/organisationskommite' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt.organisationskommite' => { 'title' => 'Kontakt, Organisationskommite', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/medienakkreditierung' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt.medienakkreditierung' => { 'title' => 'Kontakt, Medienakkreditierung', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/organigramm' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt.organigramm' => { 'title' => 'Kontakt, Organigramm', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/schwingklubmythen' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	template 'kontakt.schwingklubmythen' => { 'title' => 'Kontakt, Schwingklub Mythen', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};
get '/admin' => sub {
	my $pic = genrandompic();
	my $sol = genrandschwungol();
	my $sur = genrandschwungur();
	my $pwdisaf  = $ENV{'PWDISAF'}; 
	auth_basic realm => 'Authorized personnel only',
    users => { 'ralph' => $pwdisaf};
	template 'ADMIN' => { 'title' => 'Admin', 'actkontakt' => 'class="active"', 'titelbild' => $pic, 'sol' => $sol, 'sur' => $sur};
};

true;
