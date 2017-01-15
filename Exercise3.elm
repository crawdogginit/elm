module Exercise3 exposing (..)

import Html


main : Html.Html msg
main =
    Html.text (toString cart1)


type alias Item =
    { name : String, qty : Int, freeQty : Int }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


discount : Int -> Int -> Item -> Item
discount freeQuantity freeAmount item =
    if item.freeQty == 0 && item.qty >= freeQuantity then
        { item
            | freeQty = freeAmount
        }
    else
        item


cart1 : List Item
cart1 =
    List.map ((discount 10 3) >> (discount 5 1)) cart
