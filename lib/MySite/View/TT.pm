package MySite::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    INCLUDE_PATH => [
        MySite->path_to( 'root', 'src' ),
        MySite->path_to( 'root', 'lib' ),
    ],
    ENCODING => 'utf8',
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

MySite::View::TT - TT View for MySite

=head1 DESCRIPTION

TT View for MySite.

=head1 SEE ALSO

L<MySite>

=head1 AUTHOR

Ярослав,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
