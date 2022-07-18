-- Use Maybe
--
-- (a) Add a "title" attribute to the "Person" record. This attribute
--     is optional. If it's specified, it may contain any string,
--     but it can be unspecified as well.
--
-- (b) Demonstrate its use with the "People" instances you made in the
--     previous Question.

-- 
-- (c) Bonus: Add it to the display. If it is specified, display the string
--            if it's not specified display no output.
-- (c) Bonus: Display one of them in HTML somehow

module Maybe1 exposing (..)

import Browser
import Html exposing (Html, text)

type alias Person =
    { firstName : String
    , lastName : String
    , age : Int
    , title : Maybe String
    }

doug : Person
doug = 
    { firstName = "Doug"
    , lastName = "Hahn"
    , age = 42
    , title = Just "Project Manager"
    }


jimmy : Person
jimmy = 
    { firstName = "Jimmy"
    , lastName = "Chai"
    , age = 30
    , title = Nothing
    }

lakin : Person
lakin = 
    { firstName = "Lakin"
    , lastName = "Wecker"
    , age = 31
    , title = Nothing
    }

userTitle : Person -> Bool -> string
userTitle person =
  case person.title of
    Nothing ->
      False

    Just title ->
      title == title

main=
 text (
    "hello"    
  )

