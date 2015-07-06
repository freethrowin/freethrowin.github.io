module Main where

import Html exposing (Html, div, text)
import Html.Attributes exposing (style)

-- project imports
import FreeThrow
import Style exposing (font, background, layout)

app : Html
app =
  div [ style (font ++ background ++ layout) ] [text "Freethrows are fun."]

main : Html
main =
  app
