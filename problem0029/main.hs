import Data.List

main = print $ length $ nub combinations
combinations = [(a ^ b) | a <- [2..100], b <- [2..100]]

