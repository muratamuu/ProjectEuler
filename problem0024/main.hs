import Data.List

main = print $ permInt "0123456789" !! (1000000 - 1)

perm [] = [[]]
perm xs = [x:ys | x <- xs, ys <- perm (delete x xs)]

permInt digits = map str2int $ perm digits
  where
    str2int s = read s :: Int
