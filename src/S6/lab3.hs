module Lab3 where

-----------------------------------------------------------------------------------------------------------------------------
-- LIST COMPREHENSIONS
------------------------------------------------------------------------------------------------------------------------------

-- ===================================
-- Ex. 0 - 2
-- ===================================

evens :: [Integer] -> [Integer]
evens xs = [x | x <- xs, x `mod` 2 == 0]

-- ===================================
-- Ex. 3 - 4
-- ===================================

-- complete the following line with the correct type signature for this function
-- squares :: ...
squares n = [x * x | x <- [1..n]]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)

-- ===================================
-- Ex. 5 - 7
-- ===================================

-- complete the following line with the correct type signature for this function
-- squares' :: ...
squares' m n = [ x * x | x <- [n + 1 .. m + n] ]

sumSquares' :: Integer -> Integer
sumSquares' x = sum . uncurry squares' $ (x, x)

-- ===================================
-- Ex. 8
-- ===================================

coords :: Integer -> Integer -> [(Integer,Integer)]
coords = [(x,y) | x <- [0 .. m ], y <- [0 .. n] ]
