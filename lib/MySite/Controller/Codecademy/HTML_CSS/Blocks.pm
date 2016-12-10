package MySite::Controller::Codecademy::HTML_CSS::Blocks;
use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('/codecademy/html_css/base') :PathPart('blocks') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'Классы, id-шники, div-ы', href => $c->uri_for_action('/codecademy/html_css/blocks/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
