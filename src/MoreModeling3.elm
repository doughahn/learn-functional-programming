-- Add an attribute to the Link type that models the idea that it is highlighted in some way.
-- For example, often links are highlighted in some way when you are viewing that section/page.
--
-- Set this attribute in your list of links for at least one link
--
-- Make the highlighted links standout in some way (bold, italics, adding extra text to them, whatever is easy

module MoreModeling3 exposing (..)

import Browser
import Html exposing (Html, div, p, text, a)
import Html.Attributes exposing (href, class)
import Css exposing (..)
-- https://package.elm-lang.org/packages/rtfeldman/elm-css/17.1.1/about
-- Is this the direction you want here? 

type alias Link =
    { linkText : String
    , linkUrl : String
    , linkActive : Maybe Bool
    }

doughahn : Link
doughahn =
    { linkText = "Doug Hahn's Website"
    , linkUrl = "http://doughahn.net"
    , linkActive = Just True
    }

structuredabstraction : Link
structuredabstraction =
    { linkText = "Structured Abstraction"
    , linkUrl = "https://www.structuredabstraction.com"
    , linkActive = Nothing
    }

setClass : Maybe Bool -> String
setClass linkClass =
    case linkClass of
        Nothing ->
            ""

        Just linkActive ->
            "active"
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
    ]

siteListElement : List (Html msg)
siteListElement = 
    List.map websiteLink siteList

main : Html msg
main =
    div [] [
        div [] siteListElement
    ]