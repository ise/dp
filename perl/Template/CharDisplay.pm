package CharDisplay;

use base qw(AbstractDisplay);

sub new {
    my ($class, $ch) = @_;
    my $self = {
	'ch' => $ch
    };
    return bless $self, $class;
}

sub open {
    print '<<';
}

sub print {
    my $self = shift;
    print $self->{ch};
}

sub close {
    print '>>' . "\n";
}

1;
