module Functions1 exposing (..)

-- Question 1 (Single parameter functions: Declaration and definition)
-- a) Write a type-annotation for a function which takes a single parameter of type
--    Int and returns an Int. Name it `multiplyByTwo`
-- b) Define `multiplyByTwo` (implement it)

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

main=
 text (String.fromInt(multiplyByTwo 5))
  -- function accepts 1 number (5) and gives us another number