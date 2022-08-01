module MoreModeling5 exposing (..)


-- Extend your Person Record from the last homework with a list of certifications.
-- This means that each person can have 0 or 1 or more certifications.
-- 
-- Make Update your list of people to include some certifications.
-- 
-- Make a function that produces HTML for a given certification.
-- 
-- Using this function, and List.map extend your display of of a person to display
-- all of their certifications.


import Browser
import Html exposing (Html, div, p, text, a, ul, span)
import Html.Attributes exposing (href, class)
import Css exposing (..)
-- https://package.elm-lang.org/packages/rtfeldman/elm-css/17.1.1/about
-- Is this the direction you want here? 

type Certifications 
    = Specialist 
    | Administrator 
    | Strategist 
    | Coordinator

type alias Link =
    { linkText : String
    , linkUrl : String
    , linkActive : Maybe Bool
    , certificationsList : List Certifications
    }

doughahn : Link
doughahn =
    { linkText = "Doug Hahn's Website"
    , linkUrl = "http://doughahn.net"
    , linkActive = Just True
    , certificationsList = [Specialist, Strategist]
    }

structuredabstraction : Link
structuredabstraction =
    { linkText = "Fake Structured Abstraction"
    , linkUrl = "https://www.structuredabstraction.com"
    , linkActive = Nothing
    , certificationsList = []
    }

setClass : Maybe Bool -> String
setClass linkClass =
    case linkClass of
        Nothing ->
            ""

        Just linkActive ->
            "active"



certificationsListToHTML =
    List.map link.certificationsList


siteList : List Link
siteList = 
    [ doughahn, structuredabstraction ]



websiteLink: Link -> Html msg
websiteLink link = 
    div []
    [ 
        p [] 
        [
            a [ href link.linkUrl
            , class ( 
                link.linkActive |> setClass 
            )
            ] [ text link.linkText ] 
        ]
        , p []
        [
            -- link.certificationsList
            -- link.certificationsList |> setCertifications
        ]
    ]

siteListElement : List (Html msg)
siteListElement = 
    List.map websiteLink siteList

main : Html msg
main =
    div [] [
        div [] siteListElement
    ]