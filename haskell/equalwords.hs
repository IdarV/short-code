import System.IO
import Data.List
import Data.Map.Lazy
import Prelude hiding (null, lookup, map, filter)

-- LOL HASKELL IDFK WHAT IM DOING WAT IS THIS

myArray = [("kygo", "On, Off"), ("no", "No, Mans"), ("hihi", "ION, DEAN")]
-- hashMap = fromList [("kygo" :: String, "On, Off"), ("no", "No, Mans"), ("hihi", "ION, DEAN")]

main = do
    -- [("new", "haha")] : myArray;
    -- let hashMap = fromList myArray;
    -- print $ myArray
    -- print $ keys hashMap
    -- print $ elems hashMap
    words <- readFile "../words.txt"
    putStr words
