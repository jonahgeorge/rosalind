module Main where

transcribe :: Char -> Char
transcribe 'T' = 'U'
transcribe x = x

main :: IO ()
main = do
  xz <- getLine
  putStrLn $ map (transcribe) xz

