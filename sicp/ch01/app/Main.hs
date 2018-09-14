module Main where

import           Lib

main = do
  putStrLn "Request square root:"
  n <- getLine
  print (newtonSqrt (read n :: Double))
  main
