main = print $ let (a, b, len) = maxPrimesLen in (a*b, len)

isPrime n | n < 2 = False
isPrime n = all (\d -> n `mod` d /= 0) [2..(max n)]
  where
    max = floor . sqrt . fromIntegral

primes = filter isPrime [2..]

consecutivePrimes a b = takeWhile isPrime $ map (\n -> n ^ 2 + a * n + b) [0..]

bs = takeWhile (<= 1000) primes
as = [-999..999]

allPrimesLen = [(a, b, length $ consecutivePrimes a b) | b <- bs, a <- as]

maxPrimesLen = foldr f (0, 0, 0) allPrimesLen
  where
    f v@(_, _, len) acc@(_, _, len') = if len > len' then v else acc
