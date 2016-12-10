package MySite::Controller::Codecademy::HTML_CSS;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('/codecademy/base') :PathPart('html_css') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'HTML&CSS', href => $c->uri_for_action('/codecademy/html_css/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
