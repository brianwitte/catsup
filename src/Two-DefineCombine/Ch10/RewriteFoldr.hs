module RewriteFoldr where

myOr :: [Bool] -> Bool
myOr = foldr
       (\a b ->
         if a == True
         then True
         else b) False
