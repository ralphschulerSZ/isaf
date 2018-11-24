package formular;
use FindBin;
use Cwd qw/realpath/;
use Dancer ':syntax';
use Dancer::Plugin::reCAPTCHA;
use Crypt::Lite;

my $appdir=realpath( "$FindBin::Bin/..");
#Wichtiger Hinweis: falls Modul reCAPTCHA nicht richtig funktioniert, muss. u.U.
#noch folgendes Modul installiert werden: Net::SSLeay
#es braucht zusätzlich noch "apt-get install mutt"

post '/kontaktpost' => sub {
	my $response  = param( 'g-recaptcha-response' );
	my $result    = recaptcha_check( $response );
	
	unless ($result->{ success }) { #Checkbox "ich bin kein Roboter" wurde nicht angeklickt
		template 'antispam', {'title' => 'Antispam'};
	} else {
		my $name = params->{name};
		my $email = params->{email};
		my $comment = params->{comment};
		my $now = time();
		my $nowl = localtime(time());
		my $ip = $ENV{'HTTP_X_FORWARDED_FOR'};
		
		$ip = 'localhost' unless (defined $ip);
				
		open(DAT, ">>$appdir/data/$ip.$now.txt");
		print DAT "Name         : $name\n";
		print DAT "Email        : $email\n";
		print DAT "IP           : $ip\n";
		print DAT "Timestamp    : $now\n";
		print DAT "Datum        : $nowl\n";
		print DAT "Kommentar    :\n";
		#print DAT "-------------------------------\n";
		print DAT "$comment\n";
		#print DAT "-------------------------------\n";
		close(DAT);
		
		$comment =~ s/\n/<br>/g;
		$comment =~ s/\'/''/g;
		
		my $crypt = Crypt::Lite->new( debug => 0, encoding => 'hex8' );
		
		#r..s at gm dot com
		my $decrypted_mail1 = $crypt->decrypt('43d8f6b5076e591c91aba97d7f50058da6f54e7b551188afa96d73557980fbb76828004180f4b4372f0142d3fab03b2c084784f6e23b2f0f13d4a7e53e', 'pf08d4');
		
		#Adresse von Trello Board https://trello.com/b/R7DHjgin/isaf-kontaktanfragen
		my $decrypted_mail2 = $crypt->decrypt('45d4f4b0076e591c91abf46d744d1c84b1b62579410585abea66294d4296aae93979081295b3f2525c5a1f80b1e37d324c0284afeb61325b1f8ccae6362c5e44d9f2e6392f0143d8f1b5372b0d40d1f4e23b790d43d6a0b26a7e08', 'pf08d4');
		#todo: weitere Empfängeradresse definieren, evtl sogar Trello Adresse: ralphschuler1xy99w5@boards.trello.com
		
		system("mutt -s \"Kontakt ISAF2020\" $decrypted_mail1 < $appdir/data/$ip.$now.txt");
		system("mutt -s \"$name, $email\" ralphschuler1+eyudhmh5u2win7e0btpu\@boards.trello.com < $appdir/data/$ip.$now.txt");
		
		template 'kontaktok', {name => $name, email => $email, comment => $comment, ip => $ip, now => $now, 'title' => 'Kontaktanfrage'};
	}	
};

true;
