module Functions4 exposing (..)

-- Question 5 (Multi parameter functions: Declaration and definition)
-- a) Write the type annotation for a function which takes a two parameters of type Int and returns an Int. Name it `multiply`.
-- b) Define `multiply` (implement it)
-- c) Write the type annotation for a function which takes two parameters of type Int an returns a String Name it `multiplyAndFormat`
-- d) Define `multiplyAndFormat` (implement it)

import Browser
import Html exposing (Html, text)

-- MODEL

multiply: Int -> Int -> Int
multiply a b =
  a * b
  -- Type annotation Int -> Int -> Int; a*b=c

multiplyAndFormat: Int -> Int
multiplyAndFormat = 
  multiply 666
  -- Type annotation Int -> Int; (a*b=c)*666; define multiplyAndFormat

main=
 text (
    String.fromInt(multiplyAndFormat 666)
    )