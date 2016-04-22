my %h;open $f,'words.txt';
while(my $r=<$f>){chomp $r;$s=join('',sort(split('',$r)));if(!exists $h{$s}){$h{$s}=[]}push(@{%h{$s}},$r)}
foreach my $a(values %h){print join ', ',@{$a};print "\n";}
