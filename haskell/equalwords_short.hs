import Data.List
import GHC.Exts
main=readFile"../words.txt">>=mapM putStrLn.map(intercalate", ").groupWith sort.lines
