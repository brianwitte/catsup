module Main where

import Lib


main :: IO ()
main = do
  print ((++) ("not") (drop 4 "whatever"))
