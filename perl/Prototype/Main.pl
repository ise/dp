use strict;
use warnings;

use Manager;
use MessageBox;
use UnderlinePen;

my $aster = new MessageBox('*');
my $slash = new MessageBox('/');
my $tilde = new UnderlinePen('=');
#$mb->use('123');

my $manager = new Manager;
$manager->register('aster box', $aster);
$manager->register('slash box', $slash);
$manager->register('tilde line', $tilde);
my $p1 = $manager->create('aster box');
my $p2 = $manager->create('slash box');
my $p3 = $manager->create('tilde line');
$p1->use('uwaaa');
$p2->use('uwaaa');
$p3->use('uwaaa');
