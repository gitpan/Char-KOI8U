# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{��} ne "\x82\xa0";

use Char::KOI8U;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('������' =~ /(��[����]��)/) {
    print "not ok - 1 $^X $__FILE__ not ('������' =~ /��[����]��/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('������' =~ /��[����]��/).\n";
}

__END__
