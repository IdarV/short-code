my %h;open F,'words.txt';
while($r=<F>){chop $r;$s=join('',sort(split('',$r)));if(!exists $h{$s}){$h{$s}=[]}push(@{%h{$s}},$r)}
foreach $a(values %h){print join ', ',@{$a};print "\n";}
