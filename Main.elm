module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import TypedStyles exposing (..)
import FreeThrow

-- styles

font : List (String, String)
font =
  [ ("font-family", "futura, sans-serif")
  , ("color", "rgb(42, 42, 42)")
  , ("font-size", "2em") ]

layout : List (String, String)
layout =
  [ ("padding", "2em") ]

background : List (String, String)
background =
  [ ("background-color", "rgb(255, 0, 0)") ]

-- View
app =
  div [ style (font ++ background ++ layout) ] [text "Freethrows are fun."]

main =
  app
