main = print $ sum $ filter (\n -> n == sumOfPowers n) [2..1000000]

powers = 5
sumOfPowers n = sum [x ^ powers | x <- digits n]
  where
    digits n = map (\c -> read [c] :: Int) $ show n
