-module(lesson2_task14).
-export([dublicate/1]).
-import(lesson2_task05, [reverse/1]).

dublicate(List) ->
    dublicate(List,[]).

dublicate([],Acc) ->
    reverse(Acc);
dublicate([H|T],Acc) ->
    dublicate(T,[H,H|Acc]).