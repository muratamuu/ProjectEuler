main :: IO ()
main = print $ maximum $ map sum allPathValue

type Pos = (Int, Int)
type Path = [Pos]

allPathValue = map (\path -> map (\pos -> value pos) path) $ allPath [[(0,0)]]

allPath :: [Path] -> [Path]
allPath paths@(path:_) | length path < length triangle = allPath $ paths >>= nextPath
allPath paths = paths

nextPath :: Path -> [Path]
nextPath path@(h:_) = map (\p -> p : path) $ nextPos h

nextPos (row, column) = [(row + 1, column), (row + 1, column + 1)]

value (row, column) = triangle !! row !! column

triangle = map (\ws -> map str2int ws) $ map words $ lines testTriangleStr
  where
    str2int n = read n :: Int

testTriangleStr =
  "3\n" ++
  "7 4\n" ++
  "2 4 6\n" ++
  "8 5 9 3"

triangleStr =
  "75\n" ++
  "95 64\n" ++
  "17 47 82\n" ++
  "18 35 87 10\n" ++
  "20 04 82 47 65\n" ++
  "19 01 23 75 03 34\n" ++
  "88 02 77 73 07 63 67\n" ++
  "99 65 04 28 06 16 70 92\n" ++
  "41 41 26 56 83 40 80 70 33\n" ++
  "41 48 72 33 47 32 37 16 94 29\n" ++
  "53 71 44 65 25 43 91 52 97 51 14\n" ++
  "70 11 33 28 77 73 17 78 39 68 17 57\n" ++
  "91 71 52 38 17 14 91 43 58 50 27 29 48\n" ++
  "63 66 04 68 89 53 67 30 73 16 69 87 40 31\n" ++
  "04 62 98 27 23 09 70 98 73 93 38 53 60 04 23\n"
