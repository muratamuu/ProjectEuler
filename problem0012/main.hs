import Data.List

main :: IO ()
main = print $ minimumTriNumber 500

minimumTriNumber :: Int -> Int
minimumTriNumber len = _minimumTriNumber len 1
_minimumTriNumber len index =
  let (l, triNumber) = factorsAndLength !! index
  in if l < len then _minimumTriNumber len (index + 1)
                else triNumber

factorsAndLength :: [(Int, Int)]
factorsAndLength = map (\n -> (countOfDivisor n, n)) triNumbers

countOfDivisor :: Int -> Int
countOfDivisor n = product [length xs + 1 | xs <- primeFactors n]

primeFactors :: Int -> [[Int]]
primeFactors n = group $ _primeFactors n 0

_primeFactors 1 _ = []
_primeFactors n primeIndex = case n `mod` prime of
  0 -> prime : _primeFactors (n `div` prime) primeIndex
  _ -> _primeFactors n (primeIndex + 1)
  where
    prime = primes !! primeIndex

triNumbers :: [Int]
triNumbers = map triNumber [1..]
  where
    triNumber 1 = 1
    triNumber n = n + triNumber (n - 1)

primes :: [Int]
primes = filter isPrime [2..]

isPrime :: Int -> Bool
isPrime n = all (\d -> n `mod` d /= 0) dividers
  where
    dividers = [2..(floor . sqrt . fromIntegral $ n)]
