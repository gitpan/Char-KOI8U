# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::KOI8U;
print "1..1\n";

my $__FILE__ = __FILE__;

my $a = 'aaa_123';
$a =~ s/[a-z]+_([0-9]+)/$1/g;
if ($a eq '123') {
    print "ok - 1 ($a) s///g (with 'use strict') $^X $__FILE__\n";
}
else {
    print "not ok - 1 ($a) s///g (with 'use strict') $^X $__FILE__\n";
}

__END__
