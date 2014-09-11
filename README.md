term-termios
============

termios routines for Rakudo Perl 6

 my $saved_termios := Term::termios.new(fd => 1).getattr;
 my $termios := Term::termios.new(fd => 1).getattr;
 $termios.makeraw;
 $termios.set_oflags(<ONLCR>);
 $termios.unset_iflags(<BRKINT ICRNL ISTRIP IXON>);
 $termios.setattr(:DRAIN);

 loop {
    my $c = $*IN.getc;
    say "got: " ~ $c.ord;
    last if $c eq 'q';
 }

 $saved_termios.setattr(:DRAIN);

