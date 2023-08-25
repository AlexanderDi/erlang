-module(lesson2_task08).
-export([compress/1]).

compress(List) ->
    compress(List,[]).

compress([],Acc)->
    lesson2_task05:reverse(Acc);
compress([H1,H2|T],Acc) when H1==H2 ->
    compress([H2|T],Acc);
compress([H|T],Acc) -> 
    compress(T,[H|Acc]).