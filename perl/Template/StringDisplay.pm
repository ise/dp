package StringDisplay;

use base qw(AbstractDisplay);

sub new {
    my ($class, $string) = @_;
    my $width = int(split('', $string));
    my $self = {
	'string' => $string,
	'width'  => $width
    };
    return bless $self, $class;
}

sub open {
    my $self = shift;
    $self->printLine;
}

sub print {
    my $self = shift;
    print '|' . $self->{string} . '|' . "\n";
}

sub close {
    my $self = shift;
    $self->printLine;
}

sub printLine {
    my $self = shift;
    print '+';
    for (my $i = 0; $i < $self->{width}; $i++) {
	print '-';
    }
    print '+' . "\n";
}

1;
