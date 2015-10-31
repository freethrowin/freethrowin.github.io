module Style where

font : List (String, String)
font =
  [ ("font-family", "futura, sans-serif")
  , ("color", "rgb(42, 42, 42)")
  , ("font-size", "2em") ]

layout : List (String, String)
layout =
  [ ("padding", "1em")
  , ("padding-bottom", "6em") ]

background : List (String, String)
background =
  [ ("background-color", "rgb(0, 255, 0)") ]

currentSession : List (String, String)
currentSession =
  [ ("float", "right")
  , ("border", "3px solid black")
  , ("padding", "1em") ]