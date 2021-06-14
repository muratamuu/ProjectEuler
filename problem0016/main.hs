main :: IO ()
main = print $ sum $ map char2int $ show $ 2 ^ 1000
  where
    char2int s = read [s] :: Int

