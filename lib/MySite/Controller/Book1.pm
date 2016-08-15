package MySite::Controller::Book1;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

sub base :Chained('') :PathPart('book1') :CaptureArgs(0) {
    my ( $self, $c ) = @_;
    push @{ $c->stash->{navigation} }, { title => 'Изучаем Perl', href => $c->uri_for_action('/book1/index') };
}

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/index.tt';
}

sub scalar_data :Local {
    my ( $self, $c ) = @_;
    
    $c->stash->{template} = 'book1/scalar_data.tt';
}

sub operators :Local {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/operators.tt';
}

sub functions :Local {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/functions.tt';
}

sub exericles :Local {
    my ( $self, $c ) = @_;

    $c->stash->{template} = 'book1/exericles.tt';
}

__PACKAGE__->meta->make_immutable;

1;
