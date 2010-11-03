use BookShelf;

package BookShelfIterator;
use base qw(Iterator);

sub new {
    my ($class, $bookShelf) = @_;
    my $self = {
	index => 0,
	bookShelf => $bookShelf
    };
    return bless $self, $class;
}

sub hasNext {
    my $self = shift;
    if ($self->{index} < $self->{bookShelf}->getLength) {
	return 1;
    }
    return 0;
}

sub next {
    my $self = shift;
    $book = $self->{bookShelf}->getBook($self->{index});
    $self->{index}++;
    return $book;
}

1;
