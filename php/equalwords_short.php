<?php $w=file($argv[1]);foreach($w as$o){$s=str_split($o);sort($s);$a[join($s)][]=trim($o);}foreach($a as$b)echo join(', ',$b),"\n";
