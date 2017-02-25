import Data.List
import GHC.Exts
j=intercalate
main=readFile"../words.txt">>=putStrLn.j"\n".map(j", ").groupWith sort.lines
