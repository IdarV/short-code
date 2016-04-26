%h;open F,'words.txt';map{chop;$h{0,sort/./g}.=", $_"}<F>;print substr$_,2,.$/for values%h
