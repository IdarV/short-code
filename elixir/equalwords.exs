File.read!("words.txt") |> String.split("\n") |> Enum.reduce(%{}, fn(word, words) ->

  key = String.split(word, "") |> Enum.sort |> List.to_string
  current = Map.get(words, key, "")
  Map.put(words, key, "#{current}, #{word}")

end) |> Map.values |> Enum.each(fn(word) ->

  String.split_at(word, 2) |> elem(1) |> IO.puts
  
end)
