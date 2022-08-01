-- Model a concept of a "Link" to another page.
-- include: attributes for url and linkText
--
-- Make a link to a site.
-- 
-- Make function that produces Html for a given link using an anchor `<a>` tag with `href` property for the url.
--
-- Demonstrate the usage of this function with the above link.

module MoreModeling1 exposing (..)
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


websiteLink: Link -> Html msg
websiteLink link = 
    div []
    [ 
        p [] 
        [
            a [ href link.linkUrl ] [ text link.linkText ] 
        ]
    ]



main : Html msg
main =
    div [] [
        websiteLink doughahn
    ]
