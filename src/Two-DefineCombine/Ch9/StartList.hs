module StartList where

myHead (x : _) = x

myTail (_ : xs) = xs
