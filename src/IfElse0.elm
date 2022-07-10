module IfElse0 exposing (..)

import Browser
import Html exposing (Html, text)


-- Implement this function. Show it works.
isEvenOrOdd: Int -> String
isEvenOrOdd x = 
  if modBy 2 x == 0 then 
    "Even" 
  else 
    "Odd"

main=
 text (
    isEvenOrOdd 2
  )