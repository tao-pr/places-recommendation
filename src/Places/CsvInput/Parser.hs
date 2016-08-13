module Places.CsvInput.Parser where

import Text.ParserCombinators.Parsec
import Data.CSV

-- | Read CSV file 
readCSV :: String -> IO (Either ParseError [[String]])
readCSV path = parseFromFile csvFile path