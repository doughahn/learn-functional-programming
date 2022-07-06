module Functions5 exposing (..)

-- Question 6 (Partial Application)
-- a) Define a new function called `multiplyByTwoAgain`, but this time make it by partially applying `multiply`
-- b) Write the type annotation for `multiplyByTwoAgain`.
-- c) Define a new function called `multiplyByTwoAndFormat`. Make it through partially application of `multiplyAndFormat`
-- d) Write the type annotation for `multiplyByTwoAndFormat`.

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

multiplyByTwoAgain: Int
multiplyByTwoAgain = 
  multiplyByTwo 2 
  -- Type annotation Int

multiplyAndFormat: Int -> Int
multiplyAndFormat = 
  multiply 666
  -- Type annotation Int -> Int; (a*b=c)*666; define multiplyAndFormat

multiplyByTwoAndFormat : Int
multiplyByTwoAndFormat =
  multiplyAndFormat 2 * multiplyByTwoAgain


main=
 text (
    String.fromInt(multiplyByTwoAndFormat) ++ " = " ++  String.fromInt(multiplyAndFormat 2) ++ " * " ++ String.fromInt(multiplyByTwo 2)
    )