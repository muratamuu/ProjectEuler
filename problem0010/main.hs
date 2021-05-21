main :: IO ()
main = print . sum . primesBelow $ 2000000

primesBelow :: Int -> [Int]
primesBelow n = filter isPrime [2..n]

isPrime :: Int -> Bool
isPrime n = all (\d -> n `mod` d /= 0) dividers
  where
    dividers = [2..(floor . sqrt . fromIntegral $ n)]
