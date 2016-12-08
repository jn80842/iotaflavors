module Main exposing (..)

import Html
import View
import Model exposing (Model)
import Update

init : (Model, Cmd Update.Msg)
init = (Model.init, Cmd.none)

--subscriptions : Model -> Sub Update.Msg
--subscriptions model =




main : Program Never Model Update.Msg
main =
    Html.beginnerProgram
        { model = Model.init
        , update = Update.update
        , view = View.view
--       , subscriptions = \_ -> Sub.none
        }