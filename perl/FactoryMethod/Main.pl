use warnings;
use strict;

use IDCardFactory;

my $factory = new IDCardFactory;
my $card1 = $factory->create("under-hair");
my $card2 = $factory->create('ise');
$card1->use;
$card2->use;

my $owners = $factory->getOwners;
for my $owner (@$owners) {
    print $owner . "\n";
}
