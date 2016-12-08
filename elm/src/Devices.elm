module Devices exposing (..)

type Device = Door String Lockable | Light String Onable

type Onable = Off | On
type Lockable = Locked | Unlocked

getDeviceName : Device -> String
getDeviceName d =
    case d of 
        Door name status -> name
        Light name status -> name

getDeviceStatus : Device -> String
getDeviceStatus d =
    case d of
        Door name status -> case status of
            Locked -> "Locked"
            Unlocked -> "Unlocked"
        Light name status -> case status of
            Off -> "Off"
            On -> "On"

changeDoorStatus : Device -> Lockable -> Device
changeDoorStatus d s = 
    case d of
        Door name status -> Door name s
        _ -> Door "bad type" s

changeLightStatus : Device -> Onable -> Device
changeLightStatus l s = 
    case l of
        Light name status -> Light name s
        _ -> Light "bad type" s