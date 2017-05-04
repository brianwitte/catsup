module NonsenseCurry where

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 31337

typicalCurriedFunction :: Integer
                       -> Bool
                       -> Integer
typicalCurriedFunction i b =
  i + (nonsense b)
