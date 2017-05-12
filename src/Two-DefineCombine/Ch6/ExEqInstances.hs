module ExEqInstances where

-- Exercises: Eq Instances

data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn v) (TisAn v') =
    v == v'

-- **

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two v w) (Two v' w') =
    v == v' && w == w'

-- **

data StringOrInt =
    TisAnInt   Int
  | TisAString String

