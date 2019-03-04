module FoldrIntro where

xsMap = map show [1..5]
y = foldr (\x y -> concat
    ["(",x,"+",y,")"]) "0" xsMap
