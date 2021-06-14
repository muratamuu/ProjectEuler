main :: IO ()
main = print $ combination 40 20

combination a b = product [a,a-1..b+1] `div` product [b,b-1..1]
