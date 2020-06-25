-module(sum).
-export([sum/1]).

%--------------------------------------------------------------------------
% Tail Recursive array sum
%
sum(N) -> 
    sum(N,0).
sum(0,P) ->
    P;
sum(N,P) when N>0 ->
    sum(N-1,P+N).