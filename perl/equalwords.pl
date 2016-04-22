my %hash = ();
my $filename = 'words.txt';
open(my $fh, $filename);

while (my $row = <$fh>) {
  chomp $row;
  $abc_word =  join('', sort(split('', $row)));
  unless(exists $hash{$abc_word}){
    $hash{$abc_word} = [];
  }
  push(@{%hash{$abc_word}}, $row);
}

foreach my $group (keys %hash) {
    foreach (@{$hash{$group}}) {
        print "$_,";
    }
        print "\n";
}
