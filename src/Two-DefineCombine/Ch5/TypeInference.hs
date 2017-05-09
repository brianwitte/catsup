module TypeInference where

typeInf1 :: Num a => a -> a -> a
typeInf1 x y = x + y + 3

--No explicit type for typeInf2
typeInf2 x y = x + y + 3