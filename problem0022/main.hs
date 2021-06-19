import Data.List

main = do
  text <- readFile "./p022_names.txt"
  print $ sum $ zipWith (*) [1..] $ map score $ sort $ toNameList text

split s = reverse $ split' s [] []
split' [] tokens work = work : tokens
split' (c:cs) tokens work =
  if c == ','
    then split' cs (work : tokens) []
    else split' cs tokens (work ++ [c])

trim = init . tail

toNameList s = map trim $ split s

score name = sum $ map charScore name
  where
    charScore c = fromEnum c - fromEnum 'A' + 1

