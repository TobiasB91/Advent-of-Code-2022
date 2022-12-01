module Main where

import Data.List
import Data.Function

main = solve <$> readFile "input.txt"

solve :: String -> Int
solve = sum 
	. take 3
	. reverse
	. sort
	. map (sum . map read) 
	. filter (any (not . null)) 
	. groupBy ((&&) `on` (not . null)) 
	. lines 
