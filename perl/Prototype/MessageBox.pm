package MessageBox;
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
    for (my $i = 0; $i < $length + 4; $i++) {
	print $self->{decochar};
    }
    print "\n";

    print $self->{decochar} . ' ' . $string . ' ' . $self->{decochar} . "\n";

    for (my $i = 0; $i < $length + 4; $i++) {
	print $self->{decochar};
    }
    print "\n";
}

sub createClone {
    my $self = shift;
    return $self;
}

1;
