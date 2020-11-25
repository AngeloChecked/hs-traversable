module Traversable where

foo = 1

data Record

myData :: [String]
myData = undefined 

myFunc :: String -> IO Record
myFunc = undefined

wrong :: [IO Record]
wrong = fmap myFunc myData

right :: IO [Record]
right = traverse myFunc myData

-- t (f b) -> f (t b)

doubleFmap :: (Functor f1, Functor f2) => (a -> b) -> f1 (f2 a) -> f1 (f2 b)
doubleFmap = (fmap . fmap)

dfmapOfsumJust :: (Foldable t, Num b) => t b -> Maybe b
dfmapOfsumJust = doubleFmap sum Just

just :: ((->) a) (Maybe a)
just = \a -> Just a


