putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs

--putStrLn' [] = putChar "\n"
--putStrLn' xs = putStr' xs >> putStrLn' ""


e5_seq = [putStrLn "1", putStrLn "2", putStrLn "3"]

--sequence_1' [] = return []
--sequence_1' (m : ms) = m >> \ _ -> sequence_1' ms

sequence_2' [] = return ()
sequence_2' (m : ms) = (foldl (>>) m ms) >> return ()

sequence_3' ms = foldl (>>) (return()) ms

sequence_4' [] = return ()
sequence_4' (m : ms) = m >> sequence_4' ms

--sequence_5' [] = return ()
--sequence_5' (m : ms) = m >> \ _ -> sequence_5' ms

--sequence_6'  ms = foldr (>>=) (return ()) ms

--sequence_7'  ms = foldr (>>) (return []) ms

-- sequence1' [] = return []
-- sequence1' (m : ms)
--   = m >>=
--     \ a  ->
--       do as <- sequence1' ms
--         return (a : as)

-- sequence2' ms = foldr func (return ()) ms
--   where
--         func :: (Monad m) => m a -> m [a] -> m [a]
--         func m acc
--           = do x <- m
--                xs <- acc
--                return (x : xs)


foldLeftM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldLeftM _ i [] = return i
foldLeftM f i (x : xs) = f i x >>= \a -> foldLeftM f a xs

foldRightM :: Monad m => (a -> b -> m b) -> b -> [a] -> m b
foldRightM _ v [] = return v
foldRightM f v (x : xs) = (foldRightM f v xs) >>= \z -> f x z
