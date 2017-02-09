
and1 [] = True
and1 (b : bs) = b && and1 bs


and2 [] = True
and2 (b : bs)
  | b = and2 bs
  | otherwise = False

and3 [] = True
and3 (b : bs)
  | b == False = False
  | otherwise = and3 bs

and4 [] = True
and4 (b : bs) = b || and4 bs

and5 [] = True
and5 (b : bs) = and5 bs && b

and6 = []
and6 (b : bs)
  |b = b
  |otherwise = and6 bs
