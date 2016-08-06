use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MySite';
use MySite::Controller::Book1;

ok( request('/book1')->is_success, 'Request should succeed' );
done_testing();
