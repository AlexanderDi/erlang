-module(lesson2_task15).
-export([replicate/2]).
-import(lesson2_task05,[reverse/1]).

replicate(List,R) ->
    replicate(List,R,[]).
replicate([],_,Acc)->
    reverse(Acc);
replicate([H|T],R,Acc) ->
    replicate(T,R, dubl(H,R,Acc)).

dubl(_,0,Acc) ->
    Acc;
dubl(H,R,Acc) ->
    dubl(H,R-1,[H|Acc]).