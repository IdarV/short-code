c=Hash.new{|h,k|h[k]=[]}
File.new('words.txt').map{|w|c[w.chars.sort]<<w.chop}
c.map{|k,v|puts v*', '}
