package MySite::Controller::Perl;
use Moose;
use namespace::autoclean;
use utf8;

BEGIN { extends 'Catalyst::Controller' }

sub base :Chained('') :PathPart('perl') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'Perl', href => $c->uri_for_action('/perl/index') };
}

sub index :Chained('base') :PathPart('') :Args(0) {
    my ( $self, $c ) = @_;
}

1;
