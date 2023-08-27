-module(lesson2_task13).
-export([decode/1]).
-import(lesson2_task05, [reverse/1]).

decode(List) ->
    decode(List,[]).

decode([],Acc) ->
    reverse(Acc);    
decode([{A,B}|T],Acc) ->
    decode(T, dubl(B,A,Acc)).

dubl(_,0,Acc) ->
    Acc;
dubl(B,A,Acc) ->
    dubl(B,A-1,[B|Acc]).
