# This file is encoded in Char::JIS8.
die "This file is not encoded in Char::JIS8.\n" if q{あ} ne "\x82\xa0";

use Char::JIS8;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('ああいう' =~ /^(あいう)$/) {
    print "not ok - 1 $^X $__FILE__ not ('ああいう' =~ /^あいう\$/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('ああいう' =~ /^あいう\$/).\n";
}

__END__
