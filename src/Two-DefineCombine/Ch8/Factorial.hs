module Factorial where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes times n = 1 + (incTimes (times - 1) n)

applyTimes :: (Eq a, Num a) =>
               a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n - 1) f $ b

-- TODO: More recursion!

zeroMatch :: Int -> Int
zeroMatch 0 = 0
zeroMatch n = zeroMatch (n - 1)

zeroCase :: Int -> Int
zeroCase n = case n /= 0 of
           True  -> zeroCase (n - 1)
           False -> n
