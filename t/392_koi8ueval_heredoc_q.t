# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{��} ne "\x82\xa0";

use Char::KOI8U;

print "1..12\n";

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval "..."
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval " if ('��' =~ /[��]/i) { return 1 } else { return 0 } "
END
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval qq{...}
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval qq{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval '...'
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval ' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } '
END
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval q{...}
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval $var
my $var = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval $var
END
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval (omit)
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval
END
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has Char::KOI8U::eval {...}
if (Char::KOI8U::eval <<'END') {
Char::KOI8U::eval { if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has "..."
if (Char::KOI8U::eval <<'END') {
if ('��' =~ /[��]/i) { return "1" } else { return "0" }
END
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has qq{...}
if (Char::KOI8U::eval <<'END') {
if ('��' =~ /[��]/i) { return qq{1} } else { return qq{0} }
END
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has '...'
if (Char::KOI8U::eval <<'END') {
if ('��' =~ /[��]/i) { return '1' } else { return '0' }
END
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has q{...}
if (Char::KOI8U::eval <<'END') {
if ('��' =~ /[��]/i) { return q{1} } else { return q{0} }
END
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval <<'END' has $var
my $var1 = 1;
my $var0 = 0;
if (Char::KOI8U::eval <<'END') {
if ('��' =~ /[��]/i) { return $var1 } else { return $var0 }
END
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
