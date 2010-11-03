package Manager;
use Data::Dumper;

sub new {
    my $class = shift;
    my $self = {
	'showcase' => {}
    };
    return bless $self, $class;
}

sub register {
    my ($self, $name, $product) = @_;
    $self->{showcase}->{$name} = $product;
}

sub create {
    my ($self, $name) = @_;
    return $self->{showcase}->{$name}->createClone;
}

1;
