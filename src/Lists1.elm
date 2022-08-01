-- Use Lists 
--
-- (a) Create a constant named `people` that is a list of people.
--     Define it to be all of the people you made in the previous question.
--     Add its type annotation. 
-- 
-- (b) Use the list in your view to display all of these people.
--     Hint: You'll need to use `List.map`

module Lists1 exposing (..)

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
                [
                    text "Name: " 
                    , text person.firstName 
                    , text " " 
                    , text person.lastName
                ]
            , span [] 
                [
                    text " Title: " 
                    , (person.title |> displayTitle |> text)
                ]
            , span [] 
                [
                    text " Ageism: " 
                    , text (
                        String.fromInt(person.age)
                    )
                ]
        ]
    ]

people : List Person
people = 
    [doug, jimmy, lakin]

peopleElement : List (Html msg)
peopleElement = 
    List.map personDisplay people


-- I need to get the list of people and map each one through the persondisplay function
-- List (people) -> persondisplay
-- personDisplay doug
-- map : List -> PersonDisplay 
-- map = List.map (personDisplay people)

main : Html msg
main =
    div [] peopleElement
