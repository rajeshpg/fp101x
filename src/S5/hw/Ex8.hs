eleme _ [] = False
eleme x (y: ys)
  | x == y = True
  | otherwise = elem x ys
