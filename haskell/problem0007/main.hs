main :: IO ()
main = print . primeOf $ 10001

isPrime :: Int -> Bool
isPrime x | x < 2 = False
isPrime x = _isPrime x y
  where
    y = floor . sqrt . fromIntegral $ x

_isPrime :: Int -> Int -> Bool
_isPrime x 1 = True
_isPrime x y = if x `mod` y == 0 then False else _isPrime x (y - 1)

primes :: [Int]
primes = filter isPrime [2..]

primeOf :: Int -> Int
primeOf n = nth n primes
  where
    nth n = last . take n
