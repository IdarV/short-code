package main

import(
    "fmt"
    "io/ioutil"
    "strings"

)

func main() {
     //Open the file.
     // f, _ := os.Open("../words.txt")
     //Create a new Scanner for the file.
     //scanner := bufio.NewScanner(f)
     //Loop over all lines in the file and print them.
     //for scanner.Scan() {
	 //line := scanner.Text()
	 //fmt.Println(line)
     //}
	content, _  := ioutil.ReadFile("../words.txt")
	 fmt.Println(content)
    lines := strings.Split(string(content), "\r\n")
     for _,line := range lines{
        fmt.Println(line)
    }
}
