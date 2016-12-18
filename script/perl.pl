#!/usr/bin/perl
use uni::perl;
use utf8;

my @skipper = qw(шляпа телефон карта вода накидка рюкзак плащь палатка);
my @skipper_with_name = ('Шкипер', \@skipper);
my @professor = qw(шляпа телефон карта плащь палатка наущники микрофон);
my @professor_with_name = ('Профессор', \@professor);
my @gilligan = qw(вода телефон плащь);
my @gilligan_with_name = ('Джилиган', \@gilligan);

my @all_with_names = (
    \@skipper_with_name,
    \@professor_with_name,
    \@gilligan_with_name,
);

foreach my $person (@all_with_names) {
    check_required_items(@$person);
}

sub check_required_items {
    my $who = shift;
    my $items = shift;
    my @required = qw(шляпа телефон карта вода накидка рюкзак плащь палатка наущники микрофон);
    my @missing = ();

    foreach my $item (@required){
        unless (grep $item eq $_, @$items) {
            print "$who: отсутствует $item.\n";
            push @missing, $item;
        }
    }
    if (@missing){
        print "Добавлен @missing в саквояж @$items пасажира $who.\n";
        push @$items, @missing;
    }
}