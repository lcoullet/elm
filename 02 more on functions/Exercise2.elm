module Main exposing (..)

import Html exposing (..)
import String

(~=): String -> String -> Bool
(~=) a b =
  (String.slice 0 1 a) == (String.slice 0 1 b)

main =
  (~=) "Salut c'est cool" "Salut salut"
  |> toString 
  |> Html.text
