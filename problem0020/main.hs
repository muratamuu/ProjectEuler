main = print $ sum $ map char2int $ show $ factorial 100

factorial 1 = 1
factorial n = n * factorial (n-1)

char2int c = read [c] :: Int
