module Accumulate where

accumulate :: (a -> a) -> [a] -> [a]
accumulate = map
