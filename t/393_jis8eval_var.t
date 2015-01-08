# This file is encoded in Char::JIS8.
die "This file is not encoded in Char::JIS8.\n" if q{��} ne "\x82\xa0";

use Char::JIS8;

print "1..12\n";

my $var = '';

# Char::JIS8::eval $var has Char::JIS8::eval "..."
$var = <<'END';
Char::JIS8::eval " if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } "
END
if (Char::JIS8::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval qq{...}
$var = <<'END';
Char::JIS8::eval qq{ if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval '...'
$var = <<'END';
Char::JIS8::eval ' if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } '
END
if (Char::JIS8::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval q{...}
$var = <<'END';
Char::JIS8::eval q{ if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval $var
$var = <<'END';
Char::JIS8::eval $var2
END
my $var2 = q{ if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } };
if (Char::JIS8::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval (omit)
$var = <<'END';
Char::JIS8::eval
END
$_ = "if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 }";
if (Char::JIS8::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has Char::JIS8::eval {...}
$var = <<'END';
Char::JIS8::eval { if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return 1 } else { return 0 } }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has "..."
$var = <<'END';
if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return "1" } else { return "0" }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has qq{...}
$var = <<'END';
if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return qq{1} } else { return qq{0} }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has '...'
$var = <<'END';
if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return '1' } else { return '0' }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has q{...}
$var = <<'END';
if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return q{1} } else { return q{0} }
END
if (Char::JIS8::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::JIS8::eval $var has $var
$var = <<'END';
if (Char::JIS8::length(q{����������٦ܶ��ڿ����ѳ�ɵ��Ϲ̺�ñ����м��Ӿ�}) == 47) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::JIS8::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
