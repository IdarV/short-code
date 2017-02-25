import Data.List
import GHC.Exts
main=readFile"../words.txt">>=putStrLn.intercalate"\n".map(intercalate", ").groupWith sort.lines
