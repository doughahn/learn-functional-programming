module Case1 exposing (..)

import Browser
import Html exposing (Html, text)


positiveOrNegative : Int -> String
positiveOrNegative n =
    case n of
        y ->
            if n < 0 then
                "Negative" 
            else if n > 0 then
                "Positive"
            else 
                "Neither"

main = 
    text (
        positiveOrNegative -1
    )