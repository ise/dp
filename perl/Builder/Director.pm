package Director;

sub new {
    my ($class, $builder) = @_;
    my $self = {
	'builder' => $builder
    };
    return bless $self, $class;
}

sub construct {
    my $self = shift;
    $self->{builder}->makeTitle('Greeting');
    $self->{builder}->makeString('Morning, Afternoon');
    $self->{builder}->makeItems(
	(
	 'Good morning.',
	 'Good afternoon.',
	)
	);
    $self->{builder}->makeString('Night');
    $self->{builder}->makeItems(
	(
	 'Good night.',
	 'Good bye.'
	)
	);
    $self->{builder}->close;
}

1;
