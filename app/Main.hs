module Main where

import Lib


main :: IO ()
main = do
  print ((++) ("not n") (drop 4 "whatever"))
