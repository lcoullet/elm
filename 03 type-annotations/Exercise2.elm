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


-- Write the logic necessary to set the `freeQty` of each record using the following logic:
-- Purchases of 5 or more receive 1 free.  Purchases of 10 or more receive 3 free.

newcart : List Item
newcart = List.map ((freeQty 10 3) >> (freeQty 5 1)) cart

main : Html.Html msg
main =
    Html.text (toString newcart)
