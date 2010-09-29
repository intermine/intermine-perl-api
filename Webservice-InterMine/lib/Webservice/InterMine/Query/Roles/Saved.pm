package Webservice::InterMine::Query::Roles::Saved;

use Moose::Role;

requires(qw/name/);

has 'date' => (
    is      => 'rw',
    isa     => 'Str',
    default => '',
);

sub type { 'saved-query' }

sub head {
    my $self = shift;
    return { name => $self->name, 'date-created' => $self->date };
}

sub insertion { }

1;
