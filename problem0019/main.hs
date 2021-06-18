main = print $ length firstSundays

days m y = [1..days' m y]
days' 2 y | isLeapYear y = 29
  where
    isLeapYear y | y `mod` 4 == 0 && y `mod` 100 /= 0 = True
    isLeapYear y | y `mod` 400 == 0                   = True
    isLeapYear _                                      = False
days' 2 _  = 28
days' 4 _  = 30
days' 6 _  = 30
days' 9 _  = 30
days' 11 _ = 30
days' _ _  = 31

months = [1..12]
years = [1900..2000]

data Week = Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Show, Eq)

weeks = cycle [Mon,Tue,Wed,Thu,Fri,Sat,Sun]

alldays' = zip [(d,m,y) | y <- years, m <- months, d <- days m y] weeks

-- from 1 Jan 1901
alldays = filter (\((_, _, y), _) -> y > 1900) $ alldays'

firstSundays = filter (\((d, _, _), w) -> d == 1 && w == Sun) alldays
