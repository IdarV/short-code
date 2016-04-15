text=File.open("words.txt", "r:UTF-8").read
collection = Hash.new{|hsh,key| hsh[key] = [] }

text.each_line do |word|
  abc_word = word.split("").sort.join("")
  collection[abc_word].push word.strip
end

collection.each_key do |k|
  print "#{collection[k].join(", ")}\n"
end