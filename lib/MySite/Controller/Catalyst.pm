package MySite::Controller::Catalyst;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MySite::Controller::Catalyst - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'catalyst/index.tt';
}

sub in_9_steps :Local {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'catalyst/in_9_steps/index.tt';
}

sub step1 :Path('/catalyst/in_9_steps/step1/') {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'catalyst/in_9_steps/step1.tt';
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
