# This file is encoded in KOI8-U.
die "This file is not encoded in KOI8-U.\n" if q{��} ne "\x82\xa0";

use Char::KOI8U;

print "1..12\n";

# Char::KOI8U::eval (omit) has Char::KOI8U::eval "..."
$_ = <<'END';
Char::KOI8U::eval " if ('��' =~ /[��]/i) { return 1 } else { return 0 } "
END
if (Char::KOI8U::eval) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval qq{...}
$_ = <<'END';
Char::KOI8U::eval qq{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::KOI8U::eval) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval '...'
$_ = <<'END';
Char::KOI8U::eval ' if (qq{��} =~ /[��]/i) { return 1 } else { return 0 } '
END
if (Char::KOI8U::eval) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval q{...}
$_ = <<'END';
Char::KOI8U::eval q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::KOI8U::eval) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval $var
$_ = <<'END';
Char::KOI8U::eval $var2
END
my $var2 = q{ if ('��' =~ /[��]/i) { return 1 } else { return 0 } };
if (Char::KOI8U::eval) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval (omit)
$_ = <<'END';
$_ = "if ('��' =~ /[��]/i) { return 1 } else { return 0 }";
Char::KOI8U::eval
END
if (Char::KOI8U::eval) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has Char::KOI8U::eval {...}
$_ = <<'END';
Char::KOI8U::eval { if ('��' =~ /[��]/i) { return 1 } else { return 0 } }
END
if (Char::KOI8U::eval) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has "..."
$_ = <<'END';
if ('��' =~ /[��]/i) { return "1" } else { return "0" }
END
if (Char::KOI8U::eval) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has qq{...}
$_ = <<'END';
if ('��' =~ /[��]/i) { return qq{1} } else { return qq{0} }
END
if (Char::KOI8U::eval) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has '...'
$_ = <<'END';
if ('��' =~ /[��]/i) { return '1' } else { return '0' }
END
if (Char::KOI8U::eval) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has q{...}
$_ = <<'END';
if ('��' =~ /[��]/i) { return q{1} } else { return q{0} }
END
if (Char::KOI8U::eval) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::KOI8U::eval (omit) has $var
$_ = <<'END';
if ('��' =~ /[��]/i) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::KOI8U::eval) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
