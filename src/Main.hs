module Main where

-- | Print the numbers 1 to 100.
-- If the number is a multiple of 3, then print "Fizz" instead of the number.
-- If the number is a multiple of 5, then print "Buzz" instead of the number.
-- If the number is divisible by both 3 and 5, then print "FizzBuzz" instead.
fizzBuzz :: [Integer] -> [String]
fizzBuzz = map fizzLogic

fizzLogic :: Integer -> String
fizzLogic i =
    if i `mod` 3 == 0 && i `mod` 5 == 0 then
        "FizzBuzz"
    else if i `mod` 3 == 0 then
        "Fizz"
    else if i `mod` 5 == 0 then
        "Buzz"
    else
        show i

main :: IO ()
main = mapM_ print (fizzBuzz [1..100])
