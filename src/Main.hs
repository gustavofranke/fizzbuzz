module Main where

import Control.Monad ( forM_ )

-- | Print the numbers 1 to 100.
-- If the number is a multiple of 3, then print “Fizz” instead of the number.
-- If the number is a multiple of 5, then print “Buzz” instead of the number.
-- If the number is divisible by both 3 and 5, then print “FizzBuzz” instead.
fizzBuzz :: IO ()
fizzBuzz =
    forM_ [1..100] (\i ->
        if i `mod` 3 == 0 && i `mod` 5 == 0 then
            putStrLn "FizzBuzz"
        else if i `mod` 3 == 0 then
            putStrLn "Fizz"
        else if i `mod` 5 == 0 then
            putStrLn "Buzz"
        else
            print i
    )

main :: IO ()
main = fizzBuzz
