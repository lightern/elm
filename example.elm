-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/buttons.html

import Html exposing (program, div, button, text)
import Html.Events exposing (onClick)


main =
  program { init = init, update = update, view = view, subscriptions = subscriptions }
  

-- MODEL

model = 0


init = ( 0, Cmd.none)

subscriptions model = Sub.none
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
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]
