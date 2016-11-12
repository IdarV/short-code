#!/usr/bin/env escript
main(_)-> 
    {ok, Data} = file:read_file("../words.txt"),
    Anagrams = dict:new(),
    Words = binary:split(Data, [<<"\n">>], [global]),
    %lists:map(
    F = lists:foreach(
        fun(Word)-> 
            WordString = binary_to_list(Word),
            io:format(WordString),
            io:format("-"),
            WordSorted = lists:sort(WordString),

            io:format(WordSorted),
            io:format("\n"),
            WordSorted
            %Anagrams = lists:append(WordSorted, WordString, Anagrams)
            %dict:append("WordSorted", "Wordstring", Anagrams)
        end, 
        Words),
    %WordsSeperated = lists:join(",", Sorted),
    io:format("|||||||\n"),
    io:format(dict:fetch_keys(Anagrams)).


