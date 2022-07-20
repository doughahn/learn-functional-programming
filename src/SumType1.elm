-- Use a Sum Type
--
-- (a) Make a new Sum Type which is called `Title`.  It can be any one
--     of a predefined set of titles, like `PhD`, `MSc` or any other ones
--     you want to use.
--
--     Change the title attribute of the Person record to use this SumType.
--     The title attribute should still be optional. However, when it is
--     specified, it can now only be one of the given types above.
-- 
-- (b) Demonstrate its use with the "People" instances you made in the
--     previous Question.
--
-- (c) Make a function which converts titles into a string representation.
-- 
-- (d) Bonus: Add the new title types to the display.

module SumType1 exposing (..)

import Browser
import Html exposing (Html, text)

-- custom type
type Title 
    = Specialist 
    | Administrator 
    | Strategist 
    | Coordinator


type alias Person =
    { firstName : String
    , lastName : String
    , age : Int
    , title : Maybe Title
    }

doug : Person
doug =
    { firstName = "Doug"
    , lastName = "Hahn"
    , age = 42
    , title = Just Administrator
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


titleToString : Title -> String
titleToString title = 
    case title of 
        Specialist ->
            "Specialist"
        Administrator ->
            "Administrator"
        Strategist ->
            "Strategist"
        Coordinator ->
            "Coordinator"
            

displayTitle : Maybe Title -> String
displayTitle personTitle =
    case personTitle of
        Nothing ->
            ""

        Just title ->
            case title of 
                Specialist ->
                    "Specialist"
                Administrator ->
                    "Administrator"
                Strategist ->
                    "Strategist"
                Coordinator ->
                    "Coordinator"


main =
    doug.title |> displayTitle |> text 