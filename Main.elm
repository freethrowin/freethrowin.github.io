module Main where

import List
import String
import Html exposing (Html, div, text, button, input)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)
import StartApp.Simple as StartApp

-- project imports
import FreeThrow exposing (..)
import Style exposing (font, background, layout)

main =
  StartApp.start { model = model, view = view, update = update }

model : FreeThrow.Session
model =
  {
    player = ""
  , shots = []
  , percentage = 0
  , score = 0
  }

view address model =
  div [ style (font ++ background ++ layout) ] [
      text "Freethrows are fun"
    ]

takeShot : Shot -> Session -> Session
takeShot shot session =
  let
    points = getShotScore shot
    newScore = session.score + points
    newShots = session.shots ++ [shot]
    shotsTaken = List.length newShots
    madeShots = getMadeShotCount newShots
  in
    {
      session |
        shots <- newShots
        , score <- newScore
        , percentage <- round ((toFloat madeShots / toFloat shotsTaken) * 100)
    }

getMadeShotCount : List Shot -> Int
getMadeShotCount shots =
  List.length (List.filter .made shots)


getShotScore : Shot -> Int
getShotScore {technique, made} =
  if made then
    case technique of
      Layup -> 2
      FreeThrow -> 2
      ThreePointer -> 3
    else 0

type Action =
  Shoot Shot
  | ChangeShot ShotType
  | ChangeName String

update :  Action -> FreeThrow.Session -> FreeThrow.Session
update action model =
  case action of
    Shoot shot ->
      takeShot shot model

