-- Make a list of links
-- Use List.map and your above display function to display a list of links.

module MoreModeling2 exposing (..)

import Browser
import Html exposing (Html, div, p, text, a)
import Html.Attributes exposing (href)
-- sneaky the href is an attribute not a container, shich I think the default "Html" is?

type alias Link =
    { linkText : String
    , linkUrl : String
    }

doughahn : Link
doughahn =
    { linkText = "Doug Hahn's Website"
    , linkUrl = "http://doughahn.net"
    }

structuredabstraction : Link
structuredabstraction =
    { linkText = "Structured Abstraction"
    , linkUrl = "https://www.structuredabstraction.com"
    }

siteList : List Link
siteList = 
    [ doughahn, structuredabstraction ]

websiteLink: Link -> Html msg
websiteLink link = 
    div []
    [ 
        p [] 
        [
            a [ href link.linkUrl ] [ text link.linkText ] 
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
