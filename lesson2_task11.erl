-module(lesson2_task11).
-export([encode/1]).
-import(lesson2_task05, [reverse/1]).

encode(List)->
    [H|T]=List,
    encode(T,H,1,[]).


encode([],R,Acc,Acc2) ->
    reverse([{R,Acc}|Acc2]);

encode([H|T],H=Acc,R,Acc2) ->
    encode(T,Acc,R+1,Acc2);
encode([H|T],Acc,R,Acc2) when R>1 ->
    encode(T,H,1,[{R,Acc}|Acc2]);
encode([H|T],Acc,R,Acc2) when R==1 ->
    encode(T, H, 1, [Acc|Acc2]).