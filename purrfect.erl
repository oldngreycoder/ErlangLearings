-module(purrfect).
-export([purrfect/1]).

purrfect(0) ->
    0;
purrfect(N) when N>0 ->
    purrfectN(N,1,1).
purrfectN(N,_,Divisors) when N == Divisors ->
    true;
purrfectN(N,_,Divisors) when N =< Divisors ->
    false;
purrfectN(N, Count, Divisors) when N rem Count == 0 ->
    purrfectN(N,Count+1,Divisors+Count);
purrfectN(N, Count, Divisors) ->
    purrfectN(N,Count+1,Divisors+Count).