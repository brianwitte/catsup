module Reverse where

daString :: String
daString = "Curry is awesome"

rvrs :: String -> String
rvrs x = y ++ take 5 x
     where y = take 11 $ drop 9 x ++ drop 5 x
  
  
