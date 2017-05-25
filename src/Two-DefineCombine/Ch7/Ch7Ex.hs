module Ch7Ex where


fMult :: Char -> String
fMult = undefined

gMult :: String -> [String]
gMult = undefined

fFunc :: Ord a => a -> a -> Bool
fFunc = undefined

tensDigit1 :: Integral a => a -> a
tensDigit1 x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit2 :: Integral a => a -> (a, a)
tensDigit2 x = x `divMod` 10

hunsD :: Integral a => a -> (a, a)
hunsD x = x `divMod` 100

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y bool
            | bool == True  = x
            | bool == False = y
            
foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y bool = case bool == True of
                          True -> x
                          False -> y

gThree :: (a -> b) -> (a, c) -> (b, c)
gThree f (x, y) = (f x, y)

-- read :: Read a => String -> a
-- show :: Show a => a -> String

roundTrip :: (Show a, Read b) => a -> b
roundTrip = read . show 

main = do
  print $ (roundTrip 4 :: Int)
  print $ (id 4 :: Int)
