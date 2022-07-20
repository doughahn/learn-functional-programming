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



-- We have a Maybe String, we want a String


displayTitle : Maybe String -> String
displayTitle personTitle =
    case personTitle of
        Nothing ->
            ""

        Just title ->
            title


main =
    doug.title |> displayTitle |> text 