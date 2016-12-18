package MySite::Controller::DeepPerl::Links;
use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('/deepperl/base') :PathPart('links') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => '4 Введение в ссылки', href => $c->uri_for_action('/deepperl/links/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
