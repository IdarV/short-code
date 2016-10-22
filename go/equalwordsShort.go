package main
import(."sort"
."fmt"
."io/ioutil"
."strings"
)
func main(){c,_:=ReadFile("words.txt");var a=make(map[string][]string);for _,i:=range Split(string(c),"\n"){var j=Split(i,"");Strings(j);var k=Join(j,"");a[k]=append(a[k],i)};for _,v:=range a{Println(Join(v,", "))}}