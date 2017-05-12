module DoesItTypecheck where

data Person = Person Bool
  deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- **

data Mood = Blah
          | Woot deriving (Eq, Ord, Show)

settleDown :: Mood -> Mood
settleDown x = if x == Woot
                  then Blah
                  else x

-- **

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- **
-- Given the following datatype definitions:

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

-- **

-- Type-Kwon-Do Two

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f x y = fromInteger x + (f y) 


