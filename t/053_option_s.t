# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{あ} ne "\x82\xa0";

use Char::KOI8U;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///i
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
if ($a =~ s/JkL/あいう/i) {
    if ($a eq "ABCDEFGHIあいうMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/JkL/あいう/i ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1a \$a =~ s/JkL/あいう/i ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1b \$a =~ s/JkL/あいう/i ($a) $^X $__FILE__\n};
}

__END__
