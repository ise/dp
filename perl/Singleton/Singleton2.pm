package Singleton2;
##http://chaichan.web.infoseek.co.jp/perlnote/perlnote2008-02-272.htm
my $singleton;

sub new {
    print 'new start.' . "\n";
    my $class = shift;
    my $self = {
	'num' => 0,
    };
    if (defined($singleton)) {
	print 'singleton instance is existed.' . "\n";
	sleep(10);
	return $singleton;
    }
    $singleton = bless $self, $class;
    print 'new end.' . "\n";
    return $singleton;
}

sub getInstance {
    my $self = shift;
    return $self->new;
}

sub getSerialNumber {
    my $self = shift;
    return $self->{num}++;
}

1;
