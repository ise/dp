package IDCard;

use base qw(Product);

sub new {
    my ($class, $owner) = @_;
    my $self = {
	'owner' => $owner
    };
    print 'Creating ' . $self->{owner} . "'s card\n";
    return bless $self, $class;
}

sub use {
    my $self = shift;
    print 'Using ' . $self->{owner} . "'s card\n";
}

sub getOwner {
    my $self = shift;
    return $self->{owner};
}

1;
