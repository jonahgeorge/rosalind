module Main where

import Lib
import Data.List.Split

populate :: (Int, Int, Int) -> (Int, Int, Int)

populate (adolescents, inbetween, mature, months, perMonth) = do
    -- Increment population
    populate(adolescents, inbetween, mature, months-1, perMonth)

main :: IO ()
main = do
    input <- getLine
    let x = splitOn " " input

    let months = x !! 0
    let perMonth = x !! 1

    populate (1, 0, 0, months, perMonth)

