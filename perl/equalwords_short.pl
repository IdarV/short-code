my %h;open F,'words.txt';
while($r=<F>){chop $r;$h{join '',sort split '',$r}.="$r, "}
for(values %h){print substr($_,0,-2)."\n"}
