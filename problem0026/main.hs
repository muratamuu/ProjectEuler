import Data.List

main = print $ foldr (\v@(_, (_, vlen)) acc@(_, (_, acclen)) -> if (vlen > acclen) then v else acc) (0,([],0))
             $ map (\d -> (d, myDiv 1 d [] [])) [2..999]

myDiv n d acc rems =
  if (rest == 0)
    then (acc ++ [quot], 0)
    else if (rest `elem` rems)
      then (acc ++ [quot], recurLen rest rems)
      else myDiv (rest * 10) d (acc ++ [quot]) (rems ++ [rest])
  where
    quot = n `div` d
    rest = n `mod` d
    recurLen r rs = case elemIndex r rs of
                      Nothing -> 0
                      Just idx -> length rs - idx

