module StartList where


-- No exception handling in these funcs
myHead (x : _) = x

myTail (_ : xs) = xs


-- This one does using Maybe
safeTail :: [a] -> Maybe [a]
safeTail []     = Nothing
safeTail (x:[]) = Nothing
safeTail (_:xs) = Just xs
