module SortingTest where

newtype LengthList a = LengthList [a] deriving (Show)

instance Eq (LengthList a) where
    LengthList l1 == LengthList l2 = (length l1 == length l2) 

instance Ord a => Ord (LengthList a) where
    (LengthList l1) `compare` (LengthList l2) = 
        let len1 = length l1
            len2 = length l2
        in if len1 == len2 
           then compare l1 l2
           else compare len1 len2
