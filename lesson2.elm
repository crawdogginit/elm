module Lesson2 exposing (..)

import Html exposing (..)


(~=) string1 string2 =
    String.left 1 string1 == String.left 1 string2


result =
    "name" ~= "number"


wordCount sentence =
    sentence |> String.words |> List.length


main =
    Html.text
        (toString ((~=) "name" "number")
            ++ "  "
            ++ toString result
            ++ "  Sentence lenght is "
            ++ toString (wordCount "This sentence is six words long.")
        )
