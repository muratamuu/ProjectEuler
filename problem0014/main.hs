main :: IO ()
main = print $ foldr (\acc@(acol, _) v@(vcol, _) -> if (vcol > acol) then v else acc) (0, 0)
             $ map (\n -> (collatzlen n, n)) [1..1000000]

collatzlen = length . collatzz

collatzz 1 = [1]
collatzz n = n : collatzz (collatz n)

collatz n | isEven n = n `div` 2
  where
    isEven n = n `mod` 2 == 0
collatz n            = n * 3 + 1
