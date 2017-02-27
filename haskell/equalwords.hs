import Data.List
import GHC.Exts

main = do
    input <- readFile "../words.txt"
    let words = lines input
        anagrams = groupWith (sort) words
        formattedLines = map (\words -> intercalate ", " words) anagrams

    mapM (putStrLn) formattedLines
