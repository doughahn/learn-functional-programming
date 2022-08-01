-- Make a function which converts the Person record into HTML. 
-- (yes, this was the bonus pieces from the previous questions.)
--
-- (a) The type annotation for this function will be something like:
--     personDisplay: Person -> Html Msg
--     personDisplay person = ... -- <- you should implement this.
--
--     If you don't know html, consider just using something simple
--     formatting like bolding their name, title in regular text and
--     age  in italics.
-- 
-- (b) Use it in your view function:
--      * First for one person
--      * then for all of them (duplicating the code that use it for each
--        person is fine.)

module ConvertHTML1 exposing (..)

import Browser
import Html exposing (Html, div, span, p, text)


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


-- Lakin's hint
--     personDisplay: Person -> Html Msg
--     personDisplay person = 


displayTitle : Maybe Title -> String
displayTitle personTitle =
    case personTitle of
        Nothing ->
            ""

        Just title ->
            titleToString title


personDisplay: Person -> Html msg
personDisplay person = 
    div []
    [ 
        p [] 
        [
            span [] 
                [ text "Name: " 
                , text person.firstName 
                , text " " 
                , text person.lastName
                ]
            , span [] 
                [ text " Title: " 
                , (person.title |> displayTitle |> text)
                ]
            , span [] 
                [text " Ageism: " 
                , text (
                    String.fromInt(person.age)
                )
            ]
        ]
    ]





main : Html msg
main =
    div [] [
        personDisplay doug
        , personDisplay jimmy 
        , personDisplay lakin
    ]

--    personDisplay doug