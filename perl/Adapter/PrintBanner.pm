use Banner;

package PrintBanner;
use base qw(Print);

sub new {
    my ($class, $string) = @_;
    my $banner = new Banner($string);
    my $self = {
	banner => $banner
    };
    return bless $self, $class;
}

sub printWeak {
    my $self = shift;
    $self->{banner}->showWithParen;
}

sub printStrong {
    my $self = shift;
    $self->{banner}->showWithAster;
}

1;
