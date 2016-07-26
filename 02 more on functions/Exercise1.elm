module Main exposing (..)

import Html exposing (..)
import String

(~=): String -> String -> Bool
(~=) a b =
  (String.slice 0 1 a) == (String.slice 0 1 b)

main =
  "Salut c'est cool" ~= "Hello Friend"
  |> toString 
  |> Html.text
