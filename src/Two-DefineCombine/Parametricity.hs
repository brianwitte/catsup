module Parametricity where

--only one possible implementation for id
paramId :: a -> a
paramId x = x

--only 2 possible implementations
paramHypothetical :: a -> a -> a
paramHypothetical x y = x
--paramHypothetical x y = y


--how many implementations? does it change when types of a and b change?
paramBehavior :: a -> b -> b
paramBehavior x y = y

