package MySite::Controller::Codecademy::HTML_CSS::Box_model;
use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('/codecademy/html_css/base') :PathPart('box_model') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'Box model', href => $c->uri_for_action('/codecademy/html_css/box_model/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
