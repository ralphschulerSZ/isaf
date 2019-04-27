package isaf;
use Dancer ':syntax';
use formular;
use Dancer::Plugin::Auth::Basic;

our $VERSION = '0.1';

sub genrandompic {
	my $randid =         int(rand(6)) + 1;
	my $pic    = "/images/Titelbild_0$randid.jpg";
	return $pic;
}

get '/gallery' => sub {
	my $pic = genrandompic();
    template 'gallery' => { 'title' => 'ISAF2020 Gallery', 'activetemplates' => 'class="active"', 'titelbild' => $pic, 'titelbild' => $pic };
};
get '/infos_ok' => sub {
	my $pic = genrandompic();
    template 'INFOS_OK' => { 'title' => 'Infos OK', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/fullwidth' => sub {
	my $pic = genrandompic();
    template 'fullwidth' => { 'title' => 'ISAF2020 fullwidth', 'activetemplates' => 'class="active"', 'titelbild' => $pic };
};
get '/sidebarleft' => sub {
	my $pic = genrandompic();
    template 'sidebarleft' => { 'title' => 'ISAF2020 sidebarleft', 'activetemplates' => 'class="active"', 'titelbild' => $pic };
};
get '/sidebarright' => sub {
	my $pic = genrandompic();
    template 'sidebarright' => { 'title' => 'ISAF2020 sidebarright', 'activetemplates' => 'class="active"', 'titelbild' => $pic };
};
get '/basicgrid' => sub {
	my $pic = genrandompic();
    template 'basicgrid' => { 'title' => 'ISAF2020 basicgrid', 'activetemplates' => 'class="active"', 'titelbild' => $pic };
};
get '/fonticons' => sub {
	my $pic = genrandompic();
    template 'fonticons' => { 'title' => 'ISAF2020 fonticons', 'activetemplates' => 'class="active"', 'titelbild' => $pic };
};
get '/fotos;gallerie1' => sub {
	my $pic = genrandompic();
    template 'fotos.gallerie1' => { 'title' => 'Fotos, Gallerie 1', 'activefotos' => 'class="active"', 'titelbild' => $pic } , { layout => 'gallerie_main' };
};
get '/fotos;gallerie2' => sub {
	my $pic = genrandompic();;
    template 'fotos.gallerie2' => { 'title' => 'Fotos, Gallerie 2', 'activefotos' => 'class="active"', 'titelbild' => $pic };
};
get '/' => sub {
	my $pic = "/images/Titelbild_01.jpg";
	template 'home' => { 'title' => 'ISAF 2020 - Innerschweizer Schwing- und &Auml;lperfest, Ibach-Schwyz', 'acthome' => 'class="active"', 'titelbild' => $pic };
};
get '/homeorig' => sub {
	my $pic = genrandompic();
	template 'homeorig' => { 'title' => 'ISAF 2020 - Innerschweizer Schwing- und &Auml;lperfest, Ibach-Schwyz', 'acthome' => 'class="active"', 'titelbild' => $pic };
};
get '/fotos' => sub {
	my $pic = genrandompic();
	template 'fotos' => { 'title' => 'Fotos - ISAF2020', 'actfotos' => 'class="active"', 'titelbild' => $pic };
};
get '/festinfos' => sub {
	my $pic = genrandompic();
	template 'festinfos' => { 'title' => 'Festinfos - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/festprogramm' => sub {
	my $pic = genrandompic();
	template 'festprogramm' => { 'title' => 'Festprogramm - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/tickets' => sub {
	my $pic = genrandompic();
	template 'tickets' => { 'title' => 'Tickets - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/helfer' => sub {
	my $pic = genrandompic();
	template 'helfer' => { 'title' => 'Helfer - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/besucher' => sub {
	my $pic = genrandompic();
	template 'besucher' => { 'title' => 'Besucher - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/festgelaende' => sub {
	my $pic = genrandompic();
	template 'festgelaende' => { 'title' => 'Festgel&auml;nde - ISAF2020', 'actbesucher_helfer' => 'class="active"', 'titelbild' => $pic };
};
get '/gaben' => sub {
	my $pic = genrandompic();
	template 'gaben' => { 'title' => 'Gaben - ISAF2020', 'actgaben' => 'class="active"', 'titelbild' => $pic };
};
get '/lebendpreise' => sub {
	my $pic = genrandompic();
	template 'gaben.lebendpreise' => { 'title' => 'Gaben, Lebendpreise', 'actgaben' => 'class="active"', 'titelbild' => $pic };
};
get '/schwingerfreunde' => sub {
	my $pic = genrandompic();
	template 'gaben.schwingerfreunde' => { 'title' => 'Gaben, Schwingerfreunde', 'actgaben' => 'class="active"', 'titelbild' => $pic };
};
get '/festfuehrer' => sub {
	my $pic = genrandompic();
	template 'gaben.festfuehrer' => { 'title' => 'Gaben, Festf&uuml;hrer', 'actgaben' => 'class="active"', 'titelbild' => $pic };
};
get '/schwingen' => sub {
	my $pic = genrandompic();
	template 'schwingen' => { 'title' => 'Schwingen', 'actschwingen' => 'class="active"', 'titelbild' => $pic };
};
get '/schwingerliste' => sub {
	my $pic = genrandompic();
	template 'schwingen.schwingerliste' => { 'title' => 'Schwingen, Schwingerliste', 'actschwingen' => 'class="active"', 'titelbild' => $pic };
};
get '/programmschwingfest' => sub {
	my $pic = genrandompic();
	template 'schwingen.programmschwingfest' => { 'title' => 'Schwingen, Programm Schwingfest', 'actschwingen' => 'class="active"', 'titelbild' => $pic };
};
get '/ehrendamen' => sub {
	my $pic = genrandompic();
	template 'schwingen.ehrendamen' => { 'title' => 'Schwingen, Ehrendamen', 'actschwingen' => 'class="active"', 'titelbild' => $pic };
};
get '/steinstossen' => sub {
	my $pic = genrandompic();
	template 'schwingen.steinstossen' => { 'title' => 'Schwingen, Steinstossen', 'actschwingen' => 'class="active"', 'titelbild' => $pic };
};
get '/sponsoren' => sub {
	my $pic = genrandompic();
	template 'sponsoren' => { 'title' => 'Sponsoren', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/fest-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.fest-partner' => { 'title' => 'Sponsoren, Fest-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/schwing-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.schwing-partner' => { 'title' => 'Sponsoren, Schwing-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/kranz-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.kranz-partner' => { 'title' => 'Sponsoren, Kranz-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/personal-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.personal-partner' => { 'title' => 'Sponsoren, Personal-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/arena-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.arena-partner' => { 'title' => 'Sponsoren, Arena-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/ring-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.ring-partner' => { 'title' => 'Sponsoren, Ring-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/medien-partner' => sub {
	my $pic = genrandompic();
	template 'sponsoren.medien-partner' => { 'title' => 'Sponsoren, Medien-Partner', 'actsponsoren' => 'class="active"', 'titelbild' => $pic };
};
get '/kontakt' => sub {
	my $pic = genrandompic();
	template 'kontakt' => { 'title' => 'Kontakt', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/kontaktformular' => sub {
	my $pic = genrandompic();
	template 'kontakt.kontaktformular' => { 'title' => 'Kontakt, Kontaktformular', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/organisationskommite' => sub {
	my $pic = genrandompic();
	template 'kontakt.organisationskommite' => { 'title' => 'Kontakt, Organisationskommite', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/medienakkreditierung' => sub {
	my $pic = genrandompic();
	template 'kontakt.medienakkreditierung' => { 'title' => 'Kontakt, Medienakkreditierung', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/organigramm' => sub {
	my $pic = genrandompic();
	template 'kontakt.organigramm' => { 'title' => 'Kontakt, Organigramm', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/schwingklubmythen' => sub {
	my $pic = genrandompic();
	template 'kontakt.schwingklubmythen' => { 'title' => 'Kontakt, Schwingklub Mythen', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};
get '/admin' => sub {
	my $pic = genrandompic();
	my $pwdisaf  = $ENV{'PWDISAF'}; 
	auth_basic realm => 'Authorized personnel only',
    users => { 'ralph' => $pwdisaf};
	template 'ADMIN' => { 'title' => 'Admin', 'actkontakt' => 'class="active"', 'titelbild' => $pic };
};

true;
