defmodule Check do
  def sort(word) do
    String.split(word, "") |> Enum.sort |> List.to_string
  end

  def work(words) do
    unless words != nil && length(words) <= 0 do
      word = List.first words

      IO.write word
      sorted = sort word

      words = List.delete_at words, 0

      Enum.each words, fn(word) ->
        if String.equivalent?(sorted, sort word) do
          IO.write ", " <> word
          words = List.delete words, word
        end
      end

      IO.write "\n"

      work words
    end
  end
end

words = File.read!("words.txt") |> String.split("\n")
Check.work words
