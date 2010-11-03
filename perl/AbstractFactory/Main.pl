use strict;
use warnings;

use Factory::Link;
my $link = new Link('caption', 'url');
print $link->getCaption . "\n";
print $link->getUrl . "\n";
# my $item = new Item('caption');
# print $item->getCaption_out. "\n";


#use Factory;

#my $factory = Factory::getFactory('tablefactory.TableFactory');
# my $factory = Factory::getFactory('listfactory.ListFactory');

# my $asahi = factory->createLink('asahi', 'http://www.asahi.com/');
# my $yomiuri = factory->createLink('yomiuri', 'http://www.yomiuri.co.jp/');

# my $trayNews = factory.createTray('NewsPaper');
# $trayNews->add($asahi);
# $trayNews->add($yomiuri);

# my $page = factory.createPage('LinkPage', 'Daisuke Ise');
# $page.add($trayNews);
# $page.output();



