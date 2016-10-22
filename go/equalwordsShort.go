package main
import(e "sort"
f "fmt"
g "io/ioutil"
h "strings"
)
func main(){c,_:=g.ReadFile("words.txt");var a=make(map[string][]string);for _,i:=range h.Split(string(c),"\n"){var j=h.Split(i,"");e.Strings(j);var k=h.Join(j,"");a[k]=append(a[k],i)};for _,v:=range a{f.Println(h.Join(v,", "))}}