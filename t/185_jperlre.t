# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{あ} ne "\x82\xa0";

use Char::KOI8U;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あ]い' =~ /あ[]]い/) {
    print "ok - 1 $^X $__FILE__ ('あ]い' =~ /あ[]]い/)\n";
}
else {
    print "not ok - 1 $^X $__FILE__ ('あ]い' =~ /あ[]]い/)\n";
}

__END__
