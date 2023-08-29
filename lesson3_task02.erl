-module(lesson3_task02).
-export([first_word/1]).
-import(lesson2_task05, [reverse/1]).

first_word(Bintext) ->
    first_word(Bintext,<<"">>,[]).
first_word(<<"">>,Acc,Acc2) ->
    reverse([Acc|Acc2]);
first_word(<<" ",T/binary>>,Acc,Acc2) ->
    first_word(T,<<"">>, [<<Acc/binary>>|Acc2]);
first_word(<<X:1/binary, T/binary>> ,Acc, Acc2) ->
    io:format("~p~n", [X]),
    first_word(T, <<Acc/binary, X/binary>>, Acc2).
