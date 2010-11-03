use strict;
use warnings;
use Singleton2;

my $obj1 = Singleton2->getInstance;
my $obj2 = Singleton2->getInstance;
print $obj1->getSerialNumber . "\n";
print $obj2->getSerialNumber . "\n";
print $obj1->getSerialNumber . "\n";
print $obj1->getSerialNumber . "\n";
print $obj2->getSerialNumber . "\n";

print $obj1 . "\n";
print $obj2 . "\n";

