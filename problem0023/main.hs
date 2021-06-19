import Data.List

main = print $ sum $ filter (not . isSumOf2Abundants) [1..28123]

divisors :: Int -> [Int]
divisors n = nub $ 1 : ds ++ map (n `div`) ds
  where
    sqrtn = floor . sqrt . fromIntegral $ n
    ds = filter (\m -> n `mod` m == 0) [2..sqrtn]

sumDivisors = sum . divisors

isAbundant n = n < sumDivisors n
abundants = filter isAbundant [1..]

isSumOf2Abundants n = any isAbundant subAbundants
  where
    abundants' = takeWhile (< n) abundants
    subAbundants = [n - x | x <- abundants']
