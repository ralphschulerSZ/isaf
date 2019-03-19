package isaf;
use Dancer ':syntax';
use formular;

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
get '/fotos' => sub {template 'fotos' => { 'title' => 'Fotos', 'actfotos' => 'class="active"' };};
get '/besucher_helfer' => sub {template 'besucher_helfer' => { 'title' => 'Besucher / Helfer', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher_helfer;festprogramm' => sub {template 'besucher_helfer.festprogramm' => { 'title' => 'Besucher / Helfer, Festprogramm', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher_helfer;tickets' => sub {template 'besucher_helfer.tickets' => { 'title' => 'Besucher / Helfer, Tickets', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher_helfer;helfer' => sub {template 'besucher_helfer.helfer' => { 'title' => 'Besucher / Helfer, Helfer', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher_helfer;besucher' => sub {template 'besucher_helfer.besucher' => { 'title' => 'Besucher / Helfer, Besucher', 'actbesucher_helfer' => 'class="active"' };};
get '/besucher_helfer;festgelaende' => sub {template 'besucher_helfer.festgelaende' => { 'title' => 'Besucher / Helfer, Festgel&auml;nde', 'actbesucher_helfer' => 'class="active"' };};
get '/gaben' => sub {template 'gaben' => { 'title' => 'Gaben', 'actgaben' => 'class="active"' };};
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
get '/adminralph' => sub {template 'ADMIN_RALPH' => { 'title' => 'Admin Ralph', 'actkontakt' => 'class="active"' };};

true;
