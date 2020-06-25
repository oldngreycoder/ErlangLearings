-module(maxint).
-export([testMaxIntList/0,maxIntList/1]).
% Tail Recursive max 
% - Assuming a list of integers
%
maxIntList(L) ->
    maxIntList(L,hd(L)).
maxIntList([], Acc)->
    Acc;
maxIntList([H|T], Acc)->
    if
        H > Acc ->
            maxIntList(T,H);
        true ->
            maxIntList(T,Acc)
    end.

%  Test driver function for testing maxIntList
%
testMaxIntList() ->
    ListInt=[11,1,91,101,2001,1,2,3],
    MaxInt=maxIntList(ListInt),
    2001=MaxInt,
    ok.