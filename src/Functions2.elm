module Functions2 exposing (..)

-- Question 2 (Application)
-- a) Use it to define a constant named `four` which is equivalent to applying `multiplyByTwo` to the value 2.
-- b) Write the type annotation for `four`
-- c) Use the |> to apply `multiplyByTwo` to the const named `four` and call it `eight`
-- d) Write the type annotation for `eight`
-- e) Use the <| to apply `multiplyByTwo` to the const named `eight` and call it `sixteen`
-- f) Write the type annotation for `sixteen`

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
    String.fromInt(four) ++ " " ++ (String.fromInt(eight) ++ " " ++ (String.fromInt(sixteen))))