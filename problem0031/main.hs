import Control.Monad

main = print $ length $ do
    pound2 <- [0..1]
    pound <- [0..2]
    guard (pound2 * 200 + pound * 100 <= 200)
    p50 <- [0..4]
    guard (pound2 * 200 + pound * 100 + p50 * 50 <= 200)
    p20 <- [0..10]
    guard (pound2 * 200 + pound * 100 + p50 * 50 + p20 * 20 <= 200)
    p10 <- [0..20]
    guard (pound2 * 200 + pound * 100 + p50 * 50 + p20 * 20 + p10 * 10 <= 200)
    p5  <- [0..40]
    guard (pound2 * 200 + pound * 100 + p50 * 50 + p20 * 20 + p10 * 10 + p5 * 5 <= 200)
    p2  <- [0..100]
    guard (pound2 * 200 + pound * 100 + p50 * 50 + p20 * 20 + p10 * 10 + p5 * 5 + p2 * 2 <= 200)
    p1  <- [0..200]
    guard (pound2 * 200 + pound * 100 + p50 * 50 + p20 * 20 + p10 * 10 + p5 * 5 + p2 * 2 + p1 * 1 == 200)
    return (pound2, pound, p50, p20, p10, p5, p2, p1)

