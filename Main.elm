import Html exposing (..)
import Html.Attributes exposing (..)
import TypedStyles exposing (..)

font : List (String, String)
font =
  [ ("font-family", "futura, sans-serif")
  , ("color", "rgb(42, 42, 42)")
  , ("font-size", "2em") ]

layout : List (String, String)
layout =
  [ ("padding", "20px") ]

background : List (String, String)
background =
  [ ("background-color", "rgb(255, 0, 0)") ]

app =
  div [ style (font ++ background ++ layout) ] [text "yo"]

main =
  app
