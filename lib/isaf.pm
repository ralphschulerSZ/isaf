package isaf;
use Dancer ':syntax';
use formular;
use Dancer::Plugin::Auth::Basic;

our $VERSION = '0.1';

get '/gallery' => sub {
    template 'gallery' => { 'title' => 'ISAF2020 Gallery', 'activetemplates' => 'class="active"' };
};

get '/infos_ok' => sub {
    template 'INFOS_OK' => { 'title' => 'Infos OK', 'actkontakt' => 'class="active"' };
};

get '/fullwidth' => sub {
    template 'fullwidth' => { 'title' => 'ISAF2020 fullwidth', 'activetemplates' => 'class="active"' };
};

get '/sidebarleft' => sub {
    template 'sidebarleft' => { 'title' => 'ISAF2020 sidebarleft', 'activetemplates' => 'class="active"' };
};

get '/sidebarright' => sub {
    template 'sidebarright' => { 'title' => 'ISAF2020 sidebarright', 'activetemplates' => 'class="active"' };
};

get '/basicgrid' => sub {
    template 'basicgrid' => { 'title' => 'ISAF2020 basicgrid', 'activetemplates' => 'class="active"' };
};

get '/fonticons' => sub {
    template 'fonticons' => { 'title' => 'ISAF2020 fonticons', 'activetemplates' => 'class="active"' };
};

get '/fotos;gallerie1' => sub {
    template 'fotos.gallerie1' => { 'title' => 'Fotos, Gallerie 1', 'activefotos' => 'class="active"' } , { layout => 'gallerie_main' };
};

get '/fotos;gallerie2' => sub {
    template 'fotos.gallerie2' => { 'title' => 'Fotos, Gallerie 2', 'activefotos' => 'class="active"' };
};

get '/' => sub {template 'home' => { 'title' => 'ISAF 2020 - Innerschweizer Schwing- und &Auml;lperfest, Ibach-Schwyz', 'acthome' => 'class="active"' };};
get '/fotos' => sub {template 'fotos' => { 'title' => 'Fotos - ISAF2020', 'actfotos' => 'class="active"' };};
get '/festprogramm' => sub {template 'festprogramm' => { 'title' => 'Festprogramm - ISAF2020', 'actbesucher_helfer' => 'class="active"' };};
get '/tickets' => sub {template 'tickets' => { 'title' => 'Tickets - ISAF2020', 'actbesucher_helfer' => 'class="active"' };};
get '/helfer' => sub {template 'helfer' => { 'title' => 'Helfer - ISAF2020', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher' => sub {template 'besucher' => { 'title' => 'Besucher - ISAF2020', 'actbesucher_helfer' => 'class="active"' };};
get '/festgelaende' => sub {template 'festgelaende' => { 'title' => 'Festgel&auml;nde - ISAF2020', 'actbesucher_helfer' => 'class="active"' };};
get '/gaben' => sub {template 'gaben' => { 'title' => 'Gaben - ISAF2020', 'actgaben' => 'class="active"' };};
get '/gaben;gaben' => sub {template 'gaben.gaben' => { 'title' => 'Gaben, Gaben', 'actgaben' => 'class="active"' };};
get '/gaben;lebendpreise' => sub {template 'gaben.lebendpreise' => { 'title' => 'Gaben, Lebendpreise', 'actgaben' => 'class="active"' };};
get '/gaben;schwingerfreunde' => sub {template 'gaben.schwingerfreunde' => { 'title' => 'Gaben, Schwingerfreunde', 'actgaben' => 'class="active"' };};
get '/gaben;festfuehrer' => sub {template 'gaben.festfuehrer' => { 'title' => 'Gaben, Festf&uuml;hrer', 'actgaben' => 'class="active"' };};
get '/schwingen' => sub {template 'schwingen' => { 'title' => 'Schwingen', 'actschwingen' => 'class="active"' };};
get '/schwingen;schwingerliste' => sub {template 'schwingen.schwingerliste' => { 'title' => 'Schwingen, Schwingerliste', 'actschwingen' => 'class="active"' };};
get '/schwingen;programmschwingfest' => sub {template 'schwingen.programmschwingfest' => { 'title' => 'Schwingen, Programm Schwingfest', 'actschwingen' => 'class="active"' };};
get '/schwingen;ehrendamen' => sub {template 'schwingen.ehrendamen' => { 'title' => 'Schwingen, Ehrendamen', 'actschwingen' => 'class="active"' };};
get '/schwingen;steinstossen' => sub {template 'schwingen.steinstossen' => { 'title' => 'Schwingen, Steinstossen', 'actschwingen' => 'class="active"' };};
get '/sponsoren' => sub {template 'sponsoren' => { 'title' => 'Sponsoren', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;fest-partner' => sub {template 'sponsoren.fest-partner' => { 'title' => 'Sponsoren, Fest-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;schwing-partner' => sub {template 'sponsoren.schwing-partner' => { 'title' => 'Sponsoren, Schwing-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;kranz-partner' => sub {template 'sponsoren.kranz-partner' => { 'title' => 'Sponsoren, Kranz-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;personal-partner' => sub {template 'sponsoren.personal-partner' => { 'title' => 'Sponsoren, Personal-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;arena-partner' => sub {template 'sponsoren.arena-partner' => { 'title' => 'Sponsoren, Arena-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;ring-partner' => sub {template 'sponsoren.ring-partner' => { 'title' => 'Sponsoren, Ring-Partner', 'actsponsoren' => 'class="active"' };};
get '/sponsoren;medien-partner' => sub {template 'sponsoren.medien-partner' => { 'title' => 'Sponsoren, Medien-Partner', 'actsponsoren' => 'class="active"' };};
get '/kontakt' => sub {template 'kontakt' => { 'title' => 'Kontakt', 'actkontakt' => 'class="active"' };};
get '/kontakt;kontaktformular' => sub {template 'kontakt.kontaktformular' => { 'title' => 'Kontakt, Kontaktformular', 'actkontakt' => 'class="active"' };};
get '/kontakt;organisationskommite' => sub {template 'kontakt.organisationskommite' => { 'title' => 'Kontakt, Organisationskommite', 'actkontakt' => 'class="active"' };};
get '/kontakt;medienakkreditierung' => sub {template 'kontakt.medienakkreditierung' => { 'title' => 'Kontakt, Medienakkreditierung', 'actkontakt' => 'class="active"' };};
get '/kontakt;organigramm' => sub {template 'kontakt.organigramm' => { 'title' => 'Kontakt, Organigramm', 'actkontakt' => 'class="active"' };};
get '/kontakt;schwingklubmythen' => sub {template 'kontakt.schwingklubmythen' => { 'title' => 'Kontakt, Schwingklub Mythen', 'actkontakt' => 'class="active"' };};
get '/admin' => sub {
	my $pwdisaf  = $ENV{'PWDISAF'}; 
	auth_basic realm => 'Authorized personnel only',
    users => { 'ralph' => $pwdisaf};
	template 'ADMIN' => { 'title' => 'Admin', 'actkontakt' => 'class="active"' };
};

true;
