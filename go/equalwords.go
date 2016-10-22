package main

import(
    "fmt"
    "io/ioutil"
    "strings"
    "sort"
)

func main() {
    content, _  := ioutil.ReadFile("words.txt")
    var anagrams = make(map[string][]string)
    lines := strings.Split(string(content), "\n")

    for _,line := range lines{
        if(line == ""){
            break;
        }

        var sortedLine = strings.Split(line, "")
        sort.Strings(sortedLine);
        var sortedLineAsString = strings.Join(sortedLine, "")
        anagrams[sortedLineAsString] = append(anagrams[sortedLineAsString], line)
    }

    for _, v := range anagrams{
        fmt.Println(strings.Join(v, ", "))
    }
}
