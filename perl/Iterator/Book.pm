package Book;

sub new {
    my ($class, $name) = @_;
    my $self = {
	name => $name
    };
    return bless $self, $class;
}

sub getName {
    my $self = shift;
    return $self->{name};
}

1;
