module Gift where

import Data.Maybe (listToMaybe)

buy :: (Num a, Eq a) => a -> [a] -> Maybe (Int, Int)
buy c is = listToMaybe combinations
  where isInd = is `zip` [0..]
        combinations = [(snd i, snd j) | 
                        i <- isInd,
                        j <- isInd,
                        let indI = snd i,
                        let indJ = snd j,
                        indI /= indJ,
                        fst i + fst j == c]
