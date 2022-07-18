-- Use a record type to represent a "Person"
--
-- (a) Each "Person" should have three attributes, and 
--     all of the attributes are required (ie, not optional)
--       * First Name
--       * Last Name
--       * Age
--
-- (b) Create  3 instances of these people records.
--        * define them
--        * also provide their type annotations
-- 
-- (c) Bonus: Display one of them in HTML somehow

module Records1 exposing (..)

import Browser
import Html exposing (Html, text)

type alias Person =
    { firstName : String
    , lastName : String
    , age : Int
    }

doug : Person
doug = 
    { firstName = "Doug"
    , lastName = "Hahn"
    , age = 42
    }


jimmy : Person
jimmy = 
    { firstName = "Jimmy"
    , lastName = "Chai"
    , age = 30
    }

lakin : Person
lakin = 
    { firstName = "Lakin"
    , lastName = "Wecker"
    , age = 31
    }

main=
 text (
   doug.firstName ++ " " ++ doug.lastName ++ ", Age " ++ (String.fromInt(doug.age))
  )

