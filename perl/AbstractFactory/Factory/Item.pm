package Item;

my $caption_out;

sub new {
    my ($class, $string) = @_;
    my $self = {
	'caption' => $string
    };
    $caption_out = $string;
    return bless $self, $class;
}

sub makeHTML {
    die 'Error: implement makeHTML method.';
}

sub getCaption {
    my $self = shift;
    return $self->{caption};
}

sub getCaption_out {
    my $self = shift;
    return $caption_out;
}

1;
