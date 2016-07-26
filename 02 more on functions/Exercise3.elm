module Main exposing (..)

import Html exposing (..)
import String


wordcount : String -> Int
wordcount =
    String.words >> List.length


main =
    wordcount "Salut les amis"
        |> toString
        |> Html.text
