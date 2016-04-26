c=Hash.new{|h,k|h[k]=[]}
IO.foreach(ARGV[0]){|w|c[w.chars.sort]<<w.chop}
c.map{|k,v|puts v*', '}
