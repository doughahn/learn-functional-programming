module Functions3 exposing (..)

-- Question 3 (Display of non-strings)
-- a) Use `String.fromInt` to display some of the constant values you made before
-- b) Use `String.fromInt` and |> to `multiplyByTwo` the `sixteen` and display it (it should show 32)
-- c) Use `String.fromInt` and <| to `multiplyByTwo` and one of the other constants. 

import Browser
import Html exposing (Html, text)

-- MODEL

multiply: Int -> Int -> Int
multiply a b =
  a * b
  -- Type annotation Int -> Int -> Int; a*b=c

multiplyByTwo: Int -> Int
multiplyByTwo = 
  multiply 2
  -- Type annotation Int -> Int; (a*b=c)*2

four : Int
four = multiplyByTwo 2
    -- Type annotation for four

eight : Int 
eight = four |> multiplyByTwo
    -- Type annotation for eight

sixteen : Int 
sixteen = multiplyByTwo <| eight
    -- Type annotation for sixteen

main=
 text (
    String.fromInt(four) ++ " = Const value; " ++ (String.fromInt(sixteen |> multiplyByTwo) ++ " =sixteen |> multiplyByTwo " ++ (String.fromInt(multiplyByTwo <| four) ++ "= multiplyByTwo <| four "))
    )