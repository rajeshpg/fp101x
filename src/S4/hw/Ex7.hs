module Ex7 where
import Data.Char

lowerlet2int :: Char -> Int
lowerlet2int c = ord c - ord 'a'

upperlet2int :: Char -> Int
upperlet2int c = ord c - ord 'A'

int2lowerlet :: Int -> Char
int2lowerlet n = chr (ord 'a' + n)

int2upperlet :: Int -> Char
int2upperlet n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c
  | isLower c = int2lowerlet ((lowerlet2int c + n) `mod` 26)
  | isUpper c = int2upperlet ((upperlet2int c + n) `mod` 26)
  | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
