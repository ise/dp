package UnderlinePen;
use base qw(Product);

sub new {
    my ($class, $decochar) = @_;
    my $self = {
	'decochar' => $decochar,
    };
    return bless $self, $class;
}

sub use {
    my ($self, $string) = @_;
    my $length = int(split(//, $string));
    print '"' . $string . '"' . "\n";
    print ' ';
    for (my $i = 0; $i < $length; $i++) {
	print $self->{decochar};
    }
    print ' ';
    print "\n";
}

sub createClone {
    my $self = shift;
    return $self;
}

1;
