File.read!("words.txt")|>String.split("\n")|>Enum.reduce(%{},fn(a, b)->c=String.split(a,"")|>Enum.sort|>List.to_string
d=Map.get(b,c,"")
Map.put(b,c,"#{d}, #{a}")end)|>Map.values|>Enum.each(fn(a)->String.split_at(a,2)|>elem(1)|>IO.puts
end)
