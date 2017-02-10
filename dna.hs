module Main where

-- Given a DNA base and sequence, return the number of occurences in the sequence.
countBase :: ([Char], Char) -> Int
countBase (dna, base) = length $ filter (\b -> b == base) dna

-- Given a DNA sequence, count the number of bases and format the result.
countBases :: [Char] -> [Char]
countBases dna = do
  let aCount = countBase (dna, 'A')
  let cCount = countBase (dna, 'C')
  let gCount = countBase (dna, 'G')
  let tCount = countBase (dna, 'T')
  result <- show aCount ++ " " ++ show cCount ++ " " ++ show gCount ++ " " ++ show tCount
  return result

main :: IO ()
main = do
  dna <- getLine
  putStrLn $ countBases dna
