import Data.List

main = print $ answer 1000

zipWith' f (a:as) (b:bs) = x `seq` x : zipWith' f as bs
  where
    x = f a b
zipWith' _ _ _ = []

fibs = 1 : 1 : zipWith' (+) fibs (tail fibs)

len = length . show

answer digits = fmap (+1) $ findIndex (\n -> len n >= digits) fibs
