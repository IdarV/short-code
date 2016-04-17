c=Hash.new{|h,k|h[k]=[]}
File.open('words.txt','r:UTF-8').each{|w|c[w.chars.sort.to_s]<<w.strip}
c.each{|k,v|puts v * ', '}
