package Factory;
use Data::Dumper;

sub create {
    my ($self, $owner) = @_;
    my $p = $self->createProduct($owner);
    $self->registerProduct($p);
    return $p;
}

sub createProduct {
    die 'Error: implement createProduct method.';
}

sub registerProduct {
    die 'Error: implement registerProduct method.';
}

1;
