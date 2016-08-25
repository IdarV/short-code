import System.IO

main = do
	contents <- readFile "../words.txt"
	putStr contents
