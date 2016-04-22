# my $filename = 'words.txt';
# open(my $fh, '<:encoding(UTF-8)', $filename)
#   or die "Could not open file '$filename' $!";
#
# while (my $row = <$fh>) {
#   chomp $row;
#   print "$row\n";
# }

my %dramatis_personae = (
    humans => [ 'hamnet', 'shakespeare', 'robyn', ],
    faeries => [ 'oberon', 'titania', 'puck', ],
    other => [ 'morpheus, lord of dreams' ],
);
my $name='Jonas';
my $grp='new';
unless(exists $dramatis_personae{$grp}){
  $dramatis_personae{$grp} = [];
}

push(@{%dramatis_personae{$grp}}, $name);
# push(@{%dramatis_personae{$grp}}, $name);

foreach my $group (keys %dramatis_personae) {
    print "The members of $group are\n";
    foreach (@{$dramatis_personae{$group}}) {
        print "\t$_\n";
    }
}





# my %hash;
# @hash{@arr} = 0..$#arr;
