module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


freeQty : Int -> Int -> Item -> Item
freeQty numPurchased numFree item =
    if item.freeQty == 0 && item.qty >= numPurchased then
        { item
            | freeQty = numFree
        }
    else
        item


newcart : List Item
newcart =
    List.map ((freeQty 10 3) >> (freeQty 5 1)) cart


main : Html.Html msg
main =
    newcart
        |> toString
        |> Html.text
