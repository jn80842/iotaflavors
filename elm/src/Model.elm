module Model exposing (Model, init)

import Devices exposing (..)

type alias Model = 
    { door : Device
    , light : Device
    , placeholder : String }

init : Model
init = 
    { door = Door "Front door" Locked
    , light = Light "Hallway light" Off
    , placeholder = "hello" }