## Some basic commands

#### Start new projects with:
```
elm-package install
```
#### Install packages:
```
elm-package install elm-lang/http
```

#### Start hosting:
```
elm-reactor
```

#### Filter:
```
List.filter (\str -> str == "a") ["a", "b", "a", "c", "a"]
```

#### Tob be able to use HTML Attributes:
```
import Html.Attributes (..)
```

## Quick vocabulary:

#### Structure:
* https://medium.com/3-elm-erlang-elixir/spa-in-elm-part-1-7bc84287cade

#### Program
* A subscription is a way of saying “Hey Elm, I need you to listen for any updates about these various things.” Now when you get a geolocation change or a websocket message, it will be given to your update function.
* http://package.elm-lang.org/packages/elm-lang/html/1.1.0/Html-App#program

#### Subscriptions:
* A subscription is a way of saying “Hey Elm, I need you to listen for any updates about these various things.” Now when you get a geolocation change or a websocket message, it will be given to your update function. (Linked to Program)

#### Commands:
* Commands (Cmd) are how we tell the runtime to execute things that involve side effects (not to be mixed with console).
* https://www.elm-tutorial.org/en/03-subs-cmds/02-commands.html

#### Messages
* https://www.elm-tutorial.org/en/02-elm-arch/03-messages.html

#### Update
#### Model
* Model is a backbone of your Elm application. It stores all internal state data for you. Nothing can be done in Elm without using the model. When some event occurs it can do nothing, but update the model. UI can’t be changed directly, it’s just rendered by View based on data from model.
* https://medium.com/3-elm-erlang-elixir/spa-in-elm-part-1-7bc84287cade
* In Elm we represent the state of an application with something called a model. A model is just a data structure that contains important information about the application.
* http://elmprogramming.com/model-view-update-part-1.html#model
Subscriptions
