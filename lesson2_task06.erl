-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    is_palindrome(List,[],List).

is_palindrome([],NL,List) ->
    List==NL;
is_palindrome([H|T],NL,List) ->
    is_palindrome(T,[H|NL],List).