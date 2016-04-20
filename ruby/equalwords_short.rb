c=Hash.new{|h,k|h[k]=[]}
IO.foreach('words.txt'){|w|c[w.chars.sort]<<w.chop}
c.map{|k,v|puts v*', '}
