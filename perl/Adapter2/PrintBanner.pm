package PrintBanner;
use base qw(Print Banner);

sub new {
    my ($class, $string) = @_;
    my $self = $class->SUPER::new($string);
    return $self;
}

sub printWeak {
    my $self = shift;
    print 'call showWithParen' . "\n";
    $self->showWithParen;
}

sub printStrong {
    my $self = shift;
    print 'call showWithAster' . "\n";
    $self->showWithAster;
}

1;
