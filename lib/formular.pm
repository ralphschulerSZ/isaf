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
		my $ip = $ENV{'HTTP_X_FORWARDED_FOR'};
		
		$ip = 'localhost' unless (defined $ip);
		
		$comment =~ s/\n/<br>/g;
		$comment =~ s/\'/''/g;
		
		open(DAT, ">>$appdir/data/$ip.$now.txt");
		print DAT "name: $name\n";
		print DAT "email: $email\n";
		print DAT "ip: $ip\n";
		print DAT "now: $now\n";		
		print DAT "-------------------------------\n";
		print DAT "comment: $comment\n";
		print DAT "-------------------------------\n";
		close(DAT);
		
		my $crypt = Crypt::Lite->new( debug => 0, encoding => 'hex8' );
		my $decrypted_mail1 = $crypt->decrypt('43d8f6b5076e591c91aba97d7f50058da6f54e7b551188afa96d73557980fbb76828004180f4b4372f0142d3fab03b2c084784f6e23b2f0f13d4a7e53e', 'pf08d4');
		
		system("mutt -s \"Kontakt ISAF2020\" $decrypted_mail1 < $appdir/data/$ip.$now.txt");
		
		template 'kontaktok', {name => $name, email => $email, comment => $comment, ip => $ip, now => $now, 'title' => 'Kontaktanfrage'};
	}	
};

true;
