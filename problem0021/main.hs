main = print $ sum $ filter isAmicable [1..10000]

divisors n = filter (\m -> n `mod` m == 0) [1..n-1]
sumDivisors = sum . divisors

isAmicable a = a /= b && sumDivisors b == a
  where
    b = sumDivisors a
