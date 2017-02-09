module Ex where

halve1 xs = splitAt (length xs `div` 2) xs

halve2 xs = (take (n `div` 2) xs, drop (n `div` 2))
  where n = length xs

halve3 xs = splitAt (length xs `div` 2)

halve4 xs = (take n xs, drop (n + 1) xs)
  where n = length xs `div` 2

halve5 xs = splitAt (div (length xs) 2) xs


halve7 xs = (take n xs, drop n xs)
  where n = length xs `div` 2
