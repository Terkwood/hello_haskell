module Main where

incr :: Integer -> Integer
incr x = x + 1

main :: IO ()
main = print (incr 4)
