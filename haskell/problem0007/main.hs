main :: IO ()
main = print . primeOf $ 10001

isPrime :: Int -> Bool
isPrime x | x < 2 = False
isPrime x = _isPrimeT x 2 max
  where
    max  = floor . sqrt . fromIntegral $ x

_isPrimeT :: Int -> Int -> Int -> Bool
_isPrimeT x y max | y > max        = True
_isPrimeT x y max | x `mod` y == 0 = False
_isPrimeT x y max                  = _isPrimeT x (y + 1) max

primes :: [Int]
primes = filter isPrime [2..]

primeOf :: Int -> Int
primeOf n = nth n primes
  where
    nth n = last . take n
