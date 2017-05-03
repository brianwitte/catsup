module BecausePigsCantFly where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

showLengthOfAllAwesome :: Int
showLengthOfAllAwesome = length allAwesome

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x = if (x < 0) then 0 - x else x

main :: IO ()
main = print $ length allAwesome


