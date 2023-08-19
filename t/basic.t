use Test;

plan(2);

use Term::termios;
ok 1, 'use';

my $termios = Term::termios.new(fd=>1);
ok 2, 'new';

