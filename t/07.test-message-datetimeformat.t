
my @v;
BEGIN {
    @v = (
        ' 3-Jun-2010 09:20:47 -0400',
        '13-Jun-2010 09:20:47 -0400',
    );
}

use Test::More tests => int @v;
use Net::IMAP::Server::Message;

for(@v) {
    my $v = Net::IMAP::Server::Message::INTERNALDATE_PARSER -> parse_datetime($_);
    isnt($v, undef, "parse_datetime($_)");
}
