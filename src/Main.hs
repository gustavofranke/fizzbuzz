module Main where

import Data.Maybe ( fromMaybe )
import Data.Foldable ( Foldable(fold) )

-- | Print the numbers 1 to 100.
-- If the number is a multiple of 3, then print "Fizz" instead of the number.
-- If the number is a multiple of 5, then print "Buzz" instead of the number.
-- If the number is divisible by both 3 and 5, then print "FizzBuzz" instead.

type FizzRule = Integer -> Maybe String

-- |
-- >>> rule 6 "str" 5
-- Nothing
-- >>> rule 3 "hello" 6
-- Just "hello"
-- >>> rule 3 "hello" 9
-- Just "hello"
rule :: Integer -> String -> FizzRule
rule n m i =
    case i `mod` n of
         0 -> Just m
         _ -> Nothing

-- |
-- >>> fizz 3
-- Just "Fizz"
--
-- >>> fizz 5
-- Nothing
--
-- >>> fizz 6
-- Just "Fizz"
--
-- >>> fizz 7
-- Nothing
fizz :: FizzRule
fizz = rule 3 "Fizz"

-- |
-- >>> buzz 5
-- Just "Buzz"
--
-- >>> buzz 6
-- Nothing
--
-- >>> buzz 10
-- Just "Buzz"
--
-- >>> buzz 11
-- Nothing
buzz :: FizzRule
buzz = rule 5 "Buzz"

fizzBuzz :: [FizzRule] -> [Integer] -> [String]
fizzBuzz rules = map f
  where
    f i = fromMaybe (show i) (ruleSet i)
    ruleSet = fold rules

main :: IO ()
main = mapM_ print (fizzBuzz [fizz, buzz] [1..100])
