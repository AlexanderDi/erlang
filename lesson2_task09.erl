-module(lesson2_task09).
-export([pack/1]).
-import(lesson2_task05, [reverse/1]).

pack(List) ->
    [H|T]=List,
    pack(T,[H],[]).

pack([],Acc,Acc2) ->
    reverse([Acc|Acc2]);
pack([H|T],[H|_]=Acc,Acc2) ->
    pack(T,[H|Acc],Acc2);
pack([H|T],Acc,Acc2) ->
    pack(T,[H],[Acc|Acc2]).
