module Ch5Ex where

detTheType :: Num a => (a, [Char])
detTheType = head [(0, "doge"), (1, "kitteh")]

-- Does it compile?

-- question 1
bigNum = (^) 5
wahoo = bigNum $ 10

-- question 2 typechecked

-- question 3
b = (+) 5
c = b 10
d = (+) c 200

-- question 4
a2 = 12 + b2
b2 = 10000 * c2
c2 = 100

-- Write a type signature

-- question 1
functionH :: [a] -> a
functionH (x:_) = x

-- question 2
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- question 3
functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type, write a function

-- question 1
iWrite :: a -> a
iWrite = \x -> x

-- question 2 
cWrite :: a -> b -> a 
cWrite x y = x

-- question 3 : yes
cWrite'' :: b -> a -> b
cWrite'' x y = x

-- question 4
cWrite' :: a -> b -> b
cWrite' x y = y

-- question 5
rWrite :: [a] -> [a]
rWrite x = take 1 x

-- question 6
coWrite :: (b -> c) -> (a -> b) -> (a -> c)
coWrite f g h = f $ g h

-- question 7
aWrite :: (a -> c) -> a -> a
aWrite f x = x

-- question 8
aWrite' :: (a -> b) -> a -> b
aWrite' f x = f x

-- Fix it

-- number 1
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"


sing = if (x > y) then fstString x else sndString y
  where x = "Singin"
        y = "Somwhere"

-- skip numba 2

-- TODO: number 3

