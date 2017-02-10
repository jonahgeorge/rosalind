module Main where

populate :: Int -> Int -> Int -> Int -> Int
populate 1 litterSize mature adolescent = mature + adolescent
populate months litterSize mature adolescent = populate (months-1) litterSize (mature + adolescent) (mature * litterSize)

main :: IO ()
main = do
    let litterSize = 3
    let months = 5
    putStrLn $ show (populate months litterSize 0 1)

