-module(lesson2_task03).
-export([element_at/2]).

     element_at(List,A)-> element_at(List,A,0,0).

     element_at([],_,_,_) -> undefined;
     element_at([H|[]],A,Acc,_) when A == Acc+1 -> H;
     element_at([_|_],A,Acc,H1) when A == Acc -> H1;
     element_at([H1|T],A,Acc,_) -> element_at(T,A,Acc+1,H1).
     