-module(lesson2_task07).
-export([flatten/1]).

flatten(List) when is_list(List) ->
     flatten(List, []). 

flatten([],Acc) ->
     Acc;
flatten([H|T],Acc) when is_list(H) ->
     X = flatten(T,Acc),
     flatten(H, X);
flatten([H|T],Acc) ->
     X = flatten(T,Acc),
     [H|X].
