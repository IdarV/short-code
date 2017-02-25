import Data.List
import GHC.Exts
main=do input<-readFile"../words.txt";mapM putStrLn$map(intercalate", ")$groupWith sort$lines input
