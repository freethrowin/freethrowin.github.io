module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import TypedStyles exposing (..)

-- project imports
import FreeThrow
import Style exposing (font, background, layout)

-- View
app =
  div [ style (font ++ background ++ layout) ] [text "Freethrows are fun."]

main =
  app
