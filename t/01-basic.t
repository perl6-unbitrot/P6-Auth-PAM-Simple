use v6;
use Test;
use Pod::Coverage;

plan 2;

use Auth::PAM::Simple;

ok True, "Module loaded";
is authenticate("login", "aaaa", "aaaa"), False, "Got false response for invalid user/pass";

my $p = Pod::Coverage.new;
$p.parse(Auth::PAM::Simple);
ok !$p.are-missing, 'Everything is documented';
