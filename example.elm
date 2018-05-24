-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/buttons.html

import Html exposing (program, div, button, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (style)

import Http
import Json.Decode as Decode
-- https://github.com/elm-lang/http
-- http://elm-lang.org/examples/http


------ // "Does nothing, but says the obvious"
main =
  program { init = init, update = update, view = view, subscriptions = subscriptions }
  

-- MODEL

------ // "Store of values and definition of the first values, here constructor"
model = init

------ // "Constructor, could had given values directly as well"
init = ( 0, Cmd.none)


-- UPDATE

------ // "What 'functions or actions' there are, that can be called from dom?"
type Msg
  = Increment 
  | Decrement

------ // "What do these functions do?"
update msg model =
  case msg of
    Increment ->
      ( model + 1, Cmd.none )

    Decrement ->
      ( model - 1, Cmd.none )
      

-- VIEW
------ // "What's in the DOM?"
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

-- HTTP

------ // "The actual functions that are called from init or 'type-functions/actions'"
-- getJson : String -> Cmd Msg
