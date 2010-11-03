package IDCardFactory;
use IDCard;
use base qw(Factory);

sub new {
    my ($class, $owner) = @_;
    my $self = {
	owners => ()
    };
    return bless $self, $class;
}

sub createProduct {
    my ($self, $owner) = @_;
    return new IDCard($owner);
}

sub registerProduct {
    my ($self, $product) = @_;
    push @{$self->{owners}}, $product->getOwner;
}

sub getOwners {
    my $self = shift;
    return $self->{owners};
}

1;
