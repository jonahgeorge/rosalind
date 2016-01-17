module Main where

import Lib

complement :: Char -> Char
complement 'A' = 'T'
complement 'T' = 'A'
complement 'C' = 'G'
complement 'G' = 'C'
complement base = base

main :: IO ()
main = do
  dna <- getLine
  putStrLn $ reverse $ map (complement) dna
