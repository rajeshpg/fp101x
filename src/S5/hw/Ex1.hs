

length1 :: [a] -> Int
length1 [] = 0
length1 (_ : xs) = 1 + length1 xs

main = print(length1 [1,2,3])
