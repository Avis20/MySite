use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MySite';
use MySite::Controller::Catalyst;

ok( request('/catalyst')->is_success, 'Request should succeed' );
done_testing();
