-module(utpatterns).
-export([testHowManyEqual/0,testMaxOfThree/0,testXor1/0,testXor2/0,testXor3/0,testAll/0]).

% Test
% - simple test cases, from Bruno's article on medium
%           

testHowManyEqual() ->
    3=patterns:howManyEqual(10,10,10),
    2=patterns:howManyEqual(10,20,10),
    2=patterns:howManyEqual(10,10,20),
    2=patterns:howManyEqual(20,10,10),    
    0=patterns:howManyEqual(10,20,30),
    ok.

testMaxOfThree()->
    3=patterns:maxOfThree(1,2,3),  
    4=patterns:maxOfThree(4,2,3),
    10=patterns:maxOfThree(1,10,3),             
    1=patterns:maxOfThree(1,1,1),
    ok.

testXor1() ->
    false=patterns:xOr1(1,1),
    true=patterns:xOr1(1,0),
    true=patterns:xOr1(0,1),
    false=patterns:xOr1(0,0),
    ok.

testXor2() ->
    false=patterns:xOr2(1,1),
    true=patterns:xOr2(1,0),
    true=patterns:xOr2(0,1),
    false=patterns:xOr2(0,0),
    ok.

% xOr3 doesn't work
%
testXor3() ->   
    false=patterns:xOr3(1,1),
    true=patterns:xOr3(1,0),
    truepatterns:xOr3(0,1),
    false=patterns:xOr3(0,0),
    ok.

testAll() ->
    ok=testHowManyEqual(),
    ok=testMaxOfThree(),
    ok=testXor1(),
    ok=testXor2(),
    ok=testXor3(),
    ok.