module StartList where

import Data.Char

-- Lists

-- No exception handling in these funcs
myHead (x:_) = x

myTail (_:xs) = xs

-- This one does using Maybe
safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail (x:[]) = Nothing
safeTail (_:xs) = Just xs

-- I am binding variables just to get the funcs to typecheck :-p
eftBool :: Bool -> Bool -> [Bool]
eftBool x y = enumFromTo (1 > 2) (1 < 2)

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y = enumFromTo (compare 1 2) (compare 2 1)

eftInt :: Int -> Int -> [Int]
eftInt x y = enumFromTo 1 10

eftChar :: Char -> Char -> [Char]
eftChar x y = enumFromTo 'a' 'z'

-- Chapter Exercises 9.12

printUpper :: [Char] -> [Char]
printUpper xs = filter (\x -> isUpper x == True) xs

upperCased :: [Char] -> [Char]
upperCased (x:xs) = toUpper x : xs

upperRecursioned :: [Char] -> [Char]
upperRecursioned [] = []
upperRecursioned (x:xs) = toUpper x : upperRecursioned xs

upperHead :: [Char] -> Char
upperHead xs = toUpper $ head xs

upperHeadComposed :: [Char] -> Char
upperHeadComposed = toUpper . head


