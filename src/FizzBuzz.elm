module FizzBuzz exposing (..)

import Browser
import Html exposing (Html, text)


fizz: Int -> String
fizz x =
    if (modBy 3 x == 0) then
        "Fizz"
    else
        ""


buzz: Int -> String
buzz x =
    if (modBy 5 x == 0) then
        "Buzz"
    else
        String.fromInt x

fizzbuzz: Int -> String
fizzbuzz x =
    fizz x ++ buzz x

main=
 text (
    fizzbuzz 15
  )

