module MyFunctions where

add :: Num a => a -> a -> a
add x y = x + y

mul :: Num a => a -> a -> a
mul x y = x * y

haqify :: [Char] -> [Char]
haqify s = "Haq! " ++ s