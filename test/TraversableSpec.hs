module TraversableSpec where

import Test.Hspec
import Traversable

spec :: Spec
spec = 
    describe "Traversable" $ do
        it "double fmap of sum Just" $ do
            (dfmapOfsumJust [1,2,3]) `shouldBe` (Just 6) 
            ((fmap . fmap) sum Just [1,2,3]) `shouldBe` (Just 6)
            (fmap sum $ Just [1,2,3]) `shouldBe` (Just 6)

