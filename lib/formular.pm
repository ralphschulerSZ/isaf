package formular;
use FindBin;
use Cwd qw/realpath/;
use Dancer ':syntax';
use Dancer::Plugin::reCAPTCHA;
my $appdir=realpath( "$FindBin::Bin/..");
#Wichtiger Hinweis: falls Modul reCAPTCHA nicht richtig funktioniert, muss. u.U.
#noch folgendes Modul installiert werden: Net::SSLeay

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
		
		unless (defined $ip) {
			$ip = 'localhost';
		}
		
		$comment =~ s/\n/<br>/g;
		#$name = encode("iso-8859-1", $name);
		#$comment = encode("iso-8859-1", $comment);
		$comment =~ s/\'/''/g;
		
		open(DAT, ">>$appdir/data/$ip.$now.txt");
		print DAT "name: $name\n";
		print DAT "email: $email\n";
		print DAT "-------------------------------\n";
		print DAT "comment: $comment\n";
		print DAT "-------------------------------\n";
		print DAT "ip: $ip\n";
		print DAT "now: $now\n";
		close(DAT);
		
		template 'kontaktok', {name => $name, email => $email, comment => $comment, ip => $ip, now => $now, 'title' => 'Kontaktanfrage'};
	}	
};

true;
