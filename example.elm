-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/buttons.html

import Html exposing (program, div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

import Http
import Json.Decode as Decode
-- https://github.com/elm-lang/http

main =
  program { init = init, update = update, view = view, subscriptions = subscriptions }
  

-- MODEL

model = init

init = ( 0, Cmd.none)


-- UPDATE

type Msg = Increment | Decrement


update msg model =
  case msg of
    Increment ->
      ( model + 1, Cmd.none )

    Decrement ->
      ( model - 1, Cmd.none )
      

-- VIEW

view model =
  div []
    [ div [ style [ ("backgroundColor", "#C3C3C3")
    , ("height", "70px")
    , ("width", "100%") ]] []
    , button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]

-- SUBSCRIPTIONS

subscriptions model = Sub.none
