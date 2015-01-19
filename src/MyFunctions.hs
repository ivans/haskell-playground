module MyFunctions where

add :: Num a => a -> a -> a
add x y = x + y

mul :: Num a => a -> a -> a
mul x y = x * y

haqify :: [Char] -> [Char]
haqify s = "Haq! " ++ s

myDrop :: (Ord a, Num a) => a -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)

isOdd :: Integral a => a -> Bool
isOdd n = mod n 2 == 1