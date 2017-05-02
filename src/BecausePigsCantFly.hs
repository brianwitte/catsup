module BecausePigsCantFly where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

showLengthOfAllAwesome :: Int
showLengthOfAllAwesome = length allAwesome

main :: IO ()
main = print $ length allAwesome


