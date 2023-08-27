-module(lesson2_task13).
-export([decode_modified/1]).
-import(lesson2_task05, [reverse/1]).

decode_modified(List) ->
    decode_modified(List,[]).

decode_modified([],Acc) ->
    reverse(Acc);    
decode_modified([{A,B}|T],Acc) ->
    decode_modified(T, dubl(B,A,Acc)).

dubl(_,0,Acc) ->
    Acc;
dubl(B,A,Acc) ->
    dubl(B,A-1,[B|Acc]).