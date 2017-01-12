module Exercise1try exposing (..)

import Html exposing (..)
import String exposing (..)


capitalize maxLength name =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


main =
    let
        name =
            "Crawftv rules"

        length =
            String.length name
    in
        (capitalize 10 name)
            ++ (" - name length: ")
            ++ (toString length)
            |> Html.text
