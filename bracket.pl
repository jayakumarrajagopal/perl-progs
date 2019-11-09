%brackets = qw/[ ] ( ) { } < >/ ;
%rev = reverse(%brackets);

sub is_balanced { 
   my $str = shift;
   my @stack_arr=();
   foreach my $char ( split //,$str) {
      if ( exists $rev{$char} ) {
        return "Unexpected closing $char"  if pop(@stack_arr) ne $rev{$char};
      } elsif ( exists $brackets{$char} ) {
        push @stack_arr, $char;
      }
   }
return  @stack_arr == 0 ? " BALANCED " : ( join " " , @stack_arr ). " Not closed " ;
}

do {
    print " enter the string to test : ";
    $input = <>;
    chomp ($input) ;
    print ( is_balanced ( $input), "\n" ) ;
}
while ($input);
