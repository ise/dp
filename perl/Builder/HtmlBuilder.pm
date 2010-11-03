package HtmlBuilder;

use base qw(Builder);

my $fh;
my $filename;

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
    $filename = $title . '.html';
    open $fh, '>' . $filename or die "$!";
    print $fh '<html><head><title>' . $title . '</title></head><body>';
    print $fh '<h1>' . $title . '</h1>';
}

sub makeItems {
    my ($self, @items) = @_;
    print $fh '<ul>';
    for my $item (@items) {
	print $fh "<li>" . $item . '</li>';
    }
    print $fh '</ul>';
}

sub close {
    print $fh '</body></html>';
    close($fh);
}

sub getResult {
    return $filename;
}

1;
