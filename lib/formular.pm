package formular;

use Dancer ':syntax';
#use Encode;
#use Webservice::CaptchasDotNet;
#
#our $VERSION = '0.1';
#our $db = config->{maindir} . config->{gbdb};
#
#get '/guestbook' => sub {
#		
#	my $captchas = WebService::CaptchasDotNet->new(
#		client   => 'raschu',
#		secret   => 'ZjyxW7lJQKGYboqGTtFfrnoRkjLQA93Ksv2Q5RCD',
#		letters => 4,
#
#	);
#	my $random     = $captchas->random;
#	my $image_url  = $captchas->image_url;
#	$image_url = $image_url . "&color=2180BC";
#	my $sqlstring = "sqlite3 $db \"SELECT * FROM guestbook where verified = 1 order by id desc\"";
#	my @gbdata = qx($sqlstring);
#	my $json = '{}';
#	my $data = from_json $json;
#	my $cnt = 0;
#	for my $r (@gbdata) {
#		$cnt++;
#		chomp($r);
#		my ($updatetime, $id, $name, $homepage, $comment) = split(/\|/, $r);
#		$updatetime = localtime($updatetime);
#
#		my $index = sprintf("%04d", $cnt);
#		$data->{$index} = {
#			id => $id,
#			name => $name,
#			homepage => $homepage,
#			comment => $comment,
#			updatetime => $updatetime
#		};	
#	}	
#	template 'guestbook', {data => $data, random => $random, image_url => $image_url};
#};

post '/kontaktpost' => sub {
	#my $captchas = WebService::CaptchasDotNet->new(
    #                             client   => 'raschu',
    #                             secret   => 'ZjyxW7lJQKGYboqGTtFfrnoRkjLQA93Ksv2Q5RCD',
    #                             letters => 4
    #                             );
	
	my $name = params->{name};
	my $email = params->{email};
	my $comment = params->{comment};
	my $now = time();
	my $ip = $ENV{'HTTP_X_FORWARDED_FOR'};
	
	$comment =~ s/\n/<br>/g;
	#$name = encode("iso-8859-1", $name);
	#$comment = encode("iso-8859-1", $comment);
	$comment =~ s/\'/''/g;
	redirect '/';
	
	open(DAT, ">>./data/kontakt.html");
	print DAT "name: $name\n";
	close(DAT);
	
};

true;
