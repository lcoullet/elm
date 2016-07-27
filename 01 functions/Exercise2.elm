module Main exposing (..)

import Html exposing (..)
import String


capitalize : Int -> String -> String
capitalize maxlength name =
    if String.length name >= maxlength then
        String.toUpper name
    else
        name


main =
    let
        name =
            "Ludovic Coullet"

        length =
            String.length name
    in
        (capitalize 10 name)
            ++ " - name length "
            ++ toString length
            |> Html.text
