-module(patterns).
-export([maxOfThree/3,howManyEqual/3,xOr1/2,xOr2/2,xOr3/2]).

howManyEqual(X,X,X) ->
    3;
howManyEqual(X,X,_) ->
    2;
howManyEqual(_,X,X) ->
    2;
howManyEqual(X,_,X) ->
    2;
howManyEqual(_,_,_) ->
    0.

maxOfThree(X,X,X) ->
    X;
maxOfThree(X,Y,Z) ->
    max(max(X,Y),Z).

 
xOr1(X,Y) ->
    X =/= Y.
xOr2(X,Y) ->
    not(X == Y).

% This barfs
%
xOr3(X,Y) ->
    X or Y.