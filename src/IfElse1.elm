module IfElse1 exposing (..)

import Browser
import Html exposing (Html, text)


-- Implement this function. Show it works.
isNegativeOrPositive: Int -> String
isNegativeOrPositive n = 
    if n < 0 then
        "Negative" 
    else if n > 0 then
        "Positive" 
    else 
        "Neither"
main=
 text (
    isNegativeOrPositive -1
  )

