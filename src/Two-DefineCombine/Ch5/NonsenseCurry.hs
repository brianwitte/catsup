module NonsenseCurry where


funcIgnoresArgs :: a -> a -> a -> String
funcIgnoresArgs x y z = "Boo"

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

typicalCurriedFunction :: Integer
                       -> Bool
                       -> Integer
typicalCurriedFunction i b =
  i + (nonsense b)

uncurriedFunction :: (Integer, Bool)
                  -> Integer
uncurriedFunction (i, b) =
  i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonymousAndManuallyNested :: Integer
                           -> Bool
                           -> Integer
anonymousAndManuallyNested =
  \i -> \b -> i + (nonsense b)
  
currentYear :: Fractional a => a
currentYear = 2017

queensCoronation :: Fractional a => a
queensCoronation = 1952

usIndependence :: Fractional a => a
usIndependence = 1776

compareIndAndQueensRule :: Fractional a => a
compareIndAndQueensRule = (currentYear - queensCoronation) / (currentYear - usIndependence)
