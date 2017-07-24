<?php
$file = $argv[1];
$words = file($file, FILE_IGNORE_NEW_LINES);

$anagrams = [];

foreach ($words as $word) {
    $word_split = str_split($word);
    sort($word_split);
    $word_sorted = implode($word_split);
    
    $anagrams[$word_sorted][] = $word;
}

foreach ($anagrams as $anagram) {
    echo implode(', ', $anagram) . "\n";
}
