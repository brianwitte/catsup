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

-- Chapter Ex 9.12

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

-- writing your own standard functions

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) =
    if x == False
    then False
    else myAnd xs

myAndDirect :: [Bool] -> Bool
myAndDirect [] = True
myAndDirect (x:xs) = x && myAndDirect xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) =
    if x == True
    then True
    else myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs) = 
    if f x == True
    then True
    else myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem thing [] = False
myElem thing (x:xs)
    | x == thing = True
    | x /= thing = myElem thing xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse listy = last listy : myReverse (take ((length listy) - 1) listy)

squish :: [[a]] -> [a]
squish (x:xs) = concat (x:xs)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = concat $ map f $ xs

squishAgain :: [[a]] -> [a]
squishAgain xs = squishMap (\x-> x) xs

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [] = error "Empty list"
myMaximumBy f [x] = x
myMaximumBy f (x:y:xs)
    | f x y == GT = myMaximumBy f (x:xs)
    | otherwise = myMaximumBy f (y:xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f [] = error "Empty list"
myMinimumBy f [x] = x
myMinimumBy f (x:y:xs)
    | f x y == LT = myMinimumBy f (x:xs)
    | otherwise = myMinimumBy f (y:xs)

myMaximum :: (Ord a) => [a] -> a
myMaximum [] = error "Empty list"
myMaximum [x] = x
myMaximum (x:y:xs)
    | compare x y == GT = myMaximum (x:xs)
    | otherwise = myMaximum (y:xs)

myMinimum :: (Ord a) => [a] -> a
myMinimum [] = error "Empty list"
myMinimum [x] = x
myMinimum (x:y:xs)
    | compare x y == LT = myMinimum (x:xs)
    | otherwise = myMinimum (y:xs)
