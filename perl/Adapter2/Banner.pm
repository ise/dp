package Banner;

sub new {
    my ($class, $string) = @_;
    my $self = {
	'string' => $string
    };
    return bless $self, $class;
}

sub showWithParen {
    my $self = shift;
    print '(' . $self->{string} . ')' . "\n";
}

sub showWithAster {
    my $self = shift;
    print '*' . $self->{string} . '*' . "\n";
}

1;
