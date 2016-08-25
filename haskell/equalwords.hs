import System.IO

main = do
	words <- readFile "../words.txt"
	putStr words
