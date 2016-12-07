package MySite::View::TT;
use Moose;
use namespace::autoclean;
extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    INCLUDE_PATH => [
        MySite->path_to( 'root', 'src' ),
        MySite->path_to( 'root', 'wrappers' ),
    ],
    render_die => 1,
    ENCODING => 'utf8',
);


1;
