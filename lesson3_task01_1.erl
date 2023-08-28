-module(lesson3_task01_1).
-export([first_word/1]).
-import(lesson2_task05, [reverse/1]).

first_word(Bintext) ->
    first_word( binary_to_list(Bintext),[]).
first_word([H|_], Acc) when H==32 ->
    list_to_binary(reverse(Acc));
first_word([H|T],Acc) ->
    first_word(T, [H|Acc]).
