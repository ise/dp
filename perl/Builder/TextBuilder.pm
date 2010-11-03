package TextBuilder;

use base qw(Builder);

my $buffer = '';

sub new {
    my $class = shift;
    my $self = {};
    return bless $self, $class;
}

sub makeString {
    my ($self, $str) = @_;
    $buffer .= '=======================================' . "\n";
    $buffer .= '[' . $str . ']' . "\n";
    $buffer .= "\n";
}

sub makeTitle {
    my ($self, $title) = @_;
    $buffer .= '[]' . $title . "\n";
    $buffer .= "\n";
}

sub makeItems {
    my ($self, @items) = @_;
    for my $item (@items) {
	$buffer .= "  *" . $item . "\n";
    }
    $buffer .= "\n";
}

sub close {
    $buffer .= '=======================================' . "\n";
}

sub getResult {
    return $buffer;
}

1;
