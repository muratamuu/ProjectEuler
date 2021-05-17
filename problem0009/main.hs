main :: IO ()
main = print $ answer

answer = let (a, b, c) = head triplet in a * b * c

triplet :: [(Int, Int, Int)]
triplet = [(a, b, c) | a <- [1..1001], b <- [1..1001], c <- [1..1001], a + b + c == 1000, a < b && b < c, a * a + b * b == c * c]

