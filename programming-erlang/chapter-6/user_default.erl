-module(user_default).

-compile(export_all).

hello() ->
    "Hello, Charlie! How are you!!!!???".

away(Time) ->
    io:format("Charlie is away and will be back in ~w minutes~n",
              [Time]).
