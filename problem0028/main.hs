main = print $ sum $ map sumOfCorners [1..max]
  where
    max = (1001 + 1) `div` 2

sideLen n = 2 * n - 1
rectangleLen n = sideLen n * 4 - 4

sumOfCorners 1 = 1
sumOfCorners n = c1 + c2 + c3 + c4
  where
    sideLen = 2 * n - 1
    c1 = sideLen ^ 2
    c2 = c1 - sideLen + 1
    c3 = c2 - sideLen + 1
    c4 = c3 - sideLen + 1
