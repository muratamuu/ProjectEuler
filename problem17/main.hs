main :: IO ()
main = print $ sum $ map (length . numToLetters) [1..1000]

numToLetters 1 = "one"
numToLetters 2 = "two"
numToLetters 3 = "three"
numToLetters 4 = "four"
numToLetters 5 = "five"
numToLetters 6 = "six"
numToLetters 7 = "seven"
numToLetters 8 = "eight"
numToLetters 9 = "nine"
numToLetters 10 = "ten"
numToLetters 11 = "eleven"
numToLetters 12 = "twelve"
numToLetters 13 = "thirteen"
numToLetters 14 = "fourteen"
numToLetters 15 = "fifteen"
numToLetters 16 = "sixteen"
numToLetters 17 = "seventeen"
numToLetters 18 = "eighteen"
numToLetters 19 = "nineteen"
numToLetters 20 = "twenty"
numToLetters 30 = "thirty"
numToLetters 40 = "forty"
numToLetters 50 = "fifty"
numToLetters 60 = "sixty"
numToLetters 70 = "seventy"
numToLetters 80 = "eighty"
numToLetters 90 = "ninety"
numToLetters 100 = "onehundred"
numToLetters 1000 = "onethousand"

numToLetters n | n `div` 100 > 0 && n `mod` 100 == 0 = numToLetters (n `div` 100) ++ "hundred"

numToLetters n | n `div` 100 > 0 = numToLetters (n `div` 100) ++
                                     "hundred" ++ "and" ++
                                     numToLetters (n `mod` 100)

numToLetters n | n `div` 10 > 0 = numToLetters ((n `div` 10) * 10) ++
                                    numToLetters (n `mod` 10)


