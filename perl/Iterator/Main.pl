use Book;
use BookShelf;

my $book1 = new Book('Test1');
my $book2 = new Book('Test2');
my $bs = new BookShelf;
$bs->addBook($book1);
$bs->addBook($book2);
# print $book1->getName . "\n";
# print $book2->getName . "\n";
# print $bs->getLength . "\n";
# print $bs->getBook(0)->getName . "\n";
# print $bs->getLength . "\n";
# print $bs->getBook(1)->getName . "\n"; 
my $bsi = $bs->iterator;
while ($bsi->hasNext != 0) {
    print $bsi->next->getName . "\n";
}
