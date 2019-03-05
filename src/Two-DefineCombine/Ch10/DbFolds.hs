module DbFolds where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [DbDate (UTCTime
            (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbNumber 9001
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
  ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate d = foldr helper [] d
  where helper (DbDate a) b = a : b
        helper _ b = b

filterDbDate' :: [DatabaseItem] -> [UTCTime]
filterDbDate' d = foldr (\a b -> case a of
                            (DbDate a) -> a : b
                            (_) -> b) [] d

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber d = foldr (\a b -> case a of
                            (DbNumber a) -> a : b
                            (_) -> b) [] d

filterDbString :: [DatabaseItem] -> [String]
filterDbString d = foldr (\a b -> case a of
                            (DbString a) -> a : b
                            (_) -> b) [] d

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent d = maximum $ filterDbDate d

sumDb :: [DatabaseItem] -> Integer
sumDb d = sum $ filterDbNumber d

avgDb :: [DatabaseItem] -> Double
avgDb d = fromIntegral (sumDb d) / fromIntegral (length $ filterDbNumber d)

