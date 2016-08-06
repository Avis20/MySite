package MySite::Controller::Book1;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MySite::Controller::Book1 - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/index.tt';
}

sub scalar_data :Local {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/scalar_data.tt';
}

=encoding utf8

=head1 AUTHOR

Ярослав,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
