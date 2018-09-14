module Lib
  ( newtonSqrt
  , factorial
  , fib
  ) where

newtonSqrt =
  let sqrtIter :: (Fractional a, Ord a) => a -> a -> a
      sqrtIter guess x =
        if goodEnough guess x
          then guess
          else sqrtIter (improve guess x) x
      improve guess x = average guess (x / guess)
      average x y = (x + y) / 2.0
      goodEnough :: (Fractional a, Ord a) => a -> a -> Bool
      goodEnough guess x = abs ((guess * guess) - x) < 0.001
   in sqrtIter 1.0

factorial n =
  let iter product counter =
        if counter > n
          then product
          else iter (counter * product) (counter + 1)
   in iter 1 1

fib =
  let fibIter a b count =
        if count == 0
          then b
          else fibIter (a + b) a (count - 1)
   in fibIter 1 0
