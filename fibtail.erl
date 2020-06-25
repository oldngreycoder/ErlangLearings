-module(fibtail).
-export([fib/1,fibr/1]).

%For fib(4)
% Starting from zero
%=====================
%(fib(3) + fib(2))
%((fib(2) + fib(1) + fib(1) + fib(0)
%( ( (fib(1) + fib(0) + 1 + 1 +0 )
% 1 + 0 + 1 + 1=3
fib(0) ->
    0;
fib(1) ->
    1;
fib(N) when N>1 ->
    fib(N-1) + fib(N-2).

% ------------------------------------------------------------------------
% Tail Recursive(hopefully!)
%
fibr(0) ->
    0;
fibr(1) ->
    1;
fibr(N) ->
    fibtail(N,0,1).
fibtail(1,_,N) ->
    N;
fibtail(N,C,P) when N>1 ->
    fibtail(N-1,P,C+P). 


