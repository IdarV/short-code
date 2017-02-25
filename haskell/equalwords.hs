main = do
    input <- readFile "../words.txt"
    let words = lines input
    print $ words
