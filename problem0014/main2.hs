import Control.Monad.State
import qualified Data.Map.Strict as M

main = print $ foldr (\acc@(_, acclen) v@(_, vlen) -> if (acclen > vlen) then acc else v) (0, 0)
             $ collatzlens [1..1000000]

collatzlens xs = M.toList $ execState (collatzlens' xs) (M.fromList [(1,1)])

type Len = Int
type Cache = M.Map Int Len

collatzlen'' :: Int -> Int -> Int -> State Cache Int
collatzlen'' p n len = do
  cache <- get
  case M.lookup n cache of
    Just len' -> do
      put $ M.insert p (len + len') cache
      return $ len + len'
    _ -> collatzlen'' p next (len + 1)
  where
    next = if (even n) then n `div` 2 else n * 3 + 1

collatzlen' :: Int -> State Cache Int
collatzlen' n = collatzlen'' n n 0

collatzlens' :: [Int] -> State Cache [Len]
collatzlens' ns = do
  forM ns $ \n ->
    collatzlen' n
