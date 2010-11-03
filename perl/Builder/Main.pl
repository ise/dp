use strict;
use warnings;

use Director;
use TextBuilder;
use HtmlBuilder;

my $textBuilder = new TextBuilder;
my $director = new Director($textBuilder);
$director->construct;
print $textBuilder->getResult;

my $htmlBuilder = new HtmlBuilder;
$director = new Director($htmlBuilder);
$director->construct;
print $htmlBuilder->getResult . "\n";
