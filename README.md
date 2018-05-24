# Some notes on studying Elm programming language

#### Start new projects with:
```
elm-package install
```

#### Start hosting:
```
elm-reactor
```

#### Filter:
```
List.filter (\str -> str == "a") ["a", "b", "a", "c", "a"]
```

#### Quick list:

Commands:
* Commands (Cmd) are how we tell the runtime to execute things that involve side effects (not to be mixed with console).
* https://www.elm-tutorial.org/en/03-subs-cmds/02-commands.html

Messages
* 
Update
Model
* In Elm we represent the state of an application with something called a model. A model is just a data structure that contains important information about the application.
* http://elmprogramming.com/model-view-update-part-1.html#model
Subscriptions
