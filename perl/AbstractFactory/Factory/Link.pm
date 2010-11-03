use Factory::Item;

package Link;

use base qw(Item);
sub new {
    my ($class, $c, $u) = @_;
    $obj = $class->SUPER::new($c);
    $obj->{url} = $u;
    return $obj;
}

sub getUrl {
    my $self = shift;
    return $self->{url};
}

1;
