use strict;
use warnings;
use Singleton;

my $obj1 = Singleton->getInstance;
my $obj2 = Singleton->getInstance;
print $obj1->getSerialNumber . "\n";
print $obj2->getSerialNumber . "\n";
print $obj1->getSerialNumber . "\n";
print $obj1->getSerialNumber . "\n";
print $obj2->getSerialNumber . "\n";

print $obj1 . "\n";
print $obj2 . "\n";
