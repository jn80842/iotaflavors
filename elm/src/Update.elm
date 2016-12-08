module Update exposing (..)

import Model exposing (Model)
import Devices exposing (..)

type Msg = NoOp | UpdateDoorStatus Lockable | UpdateLightStatus Onable

update : Msg -> Model -> Model
update msg model = 
    case msg of
        NoOp ->
            { model | placeholder = "" }
        UpdateDoorStatus status ->
            { model | door = (changeDoorStatus model.door status) }
        UpdateLightStatus status ->
            { model | light = (changeLightStatus model.light status) }