use Mojo::Base -strict;
use Test::Mojo;
use Test::More;
use Mojo::File qw(path);

$ENV{PROXYFORURL_X_REQUEST_BASE} = 'http://localhost/proxyforurl';

my $script = path(qw(script proxyforurl))->to_abs;
plan skip_all => 'script/proxyforurl not found' unless -r $script;
my $t = Test::Mojo->new($script);

$t->get_ok('/')->status_is(200)->element_exists('a[href="/proxyforurl"]');

done_testing;
