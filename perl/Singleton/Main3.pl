#JavaのマルチスレッドとPerlのthreadsってどう違うん？
#これ実行したら、singletonになってないような
use strict;
use warnings;
use threads;
use Singleton;

my $thread1 = threads->new(\&gen1, 'One');
my $thread2 = threads->new(\&gen2, 'Two');

$thread1->join; 
$thread2->join; 

sub gen1 {
    my $obj1 = Singleton->getInstance;
    print $obj1->getSerialNumber . "\n";
    print $obj1->getSerialNumber . "\n";
    print $obj1->getSerialNumber . "\n";
    print $obj1 . "\n";
}

sub gen2 {
    my $obj2 = Singleton->getInstance;
    print $obj2->getSerialNumber . "\n";
    print $obj2->getSerialNumber . "\n";
    print $obj2->getSerialNumber . "\n";
    print $obj2->getSerialNumber . "\n";
    print $obj2 . "\n";
}
