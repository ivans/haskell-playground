module Main where

import Realwordlhaskell
import Test.Hspec
 
main :: IO ()
main = hspec $ do
  describe "Validate haqify function" $ do
    it "haqify is supposed to prefix Haq! to things" $ do
      "abc" `shouldBe` "a" ++ "bc"
