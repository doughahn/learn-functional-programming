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

multiplyAndFormat: Int -> Int -> String
multiplyAndFormat x y = 
  String.fromInt (multiply x y)

-- "multiplyByTwoAndFormat`. Make it through partially application of `multiplyAndFormat" 
-- Not sure I understand how to multiply the "multiplyAndFormat" String by 2. Are
-- you looking for us to convert back from a strong to int, then back to int for the final 
-- result of the function?

multiplyByTwoAndFormat: Int -> Int -> String
multiplyByTwoAndFormat x y = 
  String.fromInt ((multiply x y)*2)

main=
 text (
    multiplyByTwoAndFormat 4 16
    )