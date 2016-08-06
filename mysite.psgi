use strict;
use warnings;

use MySite;

my $app = MySite->apply_default_middlewares(MySite->psgi_app);
$app;

