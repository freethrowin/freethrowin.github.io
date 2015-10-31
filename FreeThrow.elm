module FreeThrow where

type alias Session =
  {
    player : String
    , shots : List Shot
    , percentage : Int
    , score : Int
    , currentShotType : ShotType
  }

type alias Shot =
  {
    technique : ShotType
    , made : Bool
  }

type ShotType =
  Layup
  | FreeThrow
  | ThreePointer

