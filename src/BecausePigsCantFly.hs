module BecausePigsCantFly where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

showLengthOfAllAwesome :: Int
showLengthOfAllAwesome = length allAwesome

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = if (x < 0) then 0 - x else x

tupleShuffle :: (a, b) -> (c, d) -> ((b,d), (a, c))
tupleShuffle x y = ((snd x, snd y),(fst x, fst y))

plusSign :: Num a => a -> a -> a
plusSign = (+)

plusOne :: Foldable t => t a -> Int
plusOne xs = w `plusSign` 1
           where w = length xs

myId :: a -> a
myId = \x -> x

myHead :: [a] -> a
myHead (x:xs) = x

myFst :: (a,b) -> a
myFst (a,b) = a

main :: IO ()
main = print $ length allAwesome


