package Singleton;
#http://d.hatena.ne.jp/kiririmode/20071214/p1#c1197696420
my $singleton;
my $num;

BEGIN {
    print 'BEGIN start.' . "\n";
    my $self = {
	'num' => 0,
    };
    $singleton = bless $self, __PACKAGE__;
    print $singleton . "\n";
    print 'BEGIN end.' . "\n";
}

sub getInstance {
    print $singleton . "\n";
    return $singleton;
}

sub getSerialNumber {
    return $singleton->{num}++;
}

1;
