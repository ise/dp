package AbstractDisplay;

sub new {
    my $class = shift;
    my $self = {};
    return bless $self, $class;
}

sub open {
    die 'Error: implement open method.';
}

sub print {
    die 'Error: implement open method.';
}

sub close {
    die 'Error: implement open method.';
}

sub display {
    my $self = shift;
    $self->open;
    for (my $i = 0; $i < 5; $i++) {
	$self->print;
    }
    $self->close;
}

1;
