use BookShelfIterator;

package BookShelf;
use base qw(Aggregate);

sub new {
    my $class = shift;
    my $self = {
	index => 0,
	books => {}
    };
    return bless $self, $class;
}

sub addBook {
    my ($self, $book) = @_;
    $self->{books}->{$self->{index}} = $book;
    $self->{index}++;
}

sub getBook {
    my ($self, $index) = @_;
    return $self->{books}->{$index};    
}

sub getLength {
    my $self = shift;
    return $self->{index};
}

sub iterator {
    my $self = shift;
    my $it = new BookShelfIterator($self);
    return $it;
}

1;
