module View exposing (..)

import Update
import Model exposing (Model)
import Devices exposing (..)
import Html exposing (div, Html, text, button)
import Html.Events exposing (onClick, onMouseDown, onMouseUp, on)
import Html.Attributes exposing (style)

(=>) : a -> b -> ( a, b )
(=>) =
    (,)

view : Model -> Html.Html Update.Msg
view model =
    div 
        [ style [ "text-align" => "center"
                , "padding" => "30px 0" ]] 
        [ div
            [ style [ "padding" => "10px 0"]]
            [ text ((getDeviceName model.door) ++ " status: " ++ (getDeviceStatus model.door))]
        , div
            [ style [ "padding" => "10px 0"]]
            [ text ((getDeviceName model.light) ++ " status: " ++ (getDeviceStatus model.light))]
        ]