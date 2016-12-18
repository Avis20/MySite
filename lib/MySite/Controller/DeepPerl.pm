package MySite::Controller::DeepPerl;
use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('') :PathPart('deep_perl') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'DeepPerl', href => $c->uri_for_action('/deepperl/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
