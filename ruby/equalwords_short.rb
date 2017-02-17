puts$<.map(&:chop).group_by{|i|i.chars.sort}.map{|k,v|v*', '}
