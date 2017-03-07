-module(pattern_matching).
-export([xOr/2,xOrV2/2,xOrV3/2,maxThree/3,maxThreeV2/3,howManyEqual/3]).

xOr(X, Y) ->
    not (X == Y).

xOrV2(X, Y) ->
    X =/= Y.

xOrV3(X, Y) ->
    (X =/= Y) and not (X == Y).

maxThree(X,Y,Z) ->
    A = max(X,Y),
    B = max(Y,Z),
    max(A,B).

maxThreeV2(X,Y,Z) ->
    max(max(X,Y),Z).

howManyEqual(A, A, A) ->
    3;
howManyEqual(A, A, _) ->
    2;
howManyEqual(A, _, A) ->
    2;
howManyEqual(_, A, A) ->
    2;
howManyEqual(_, _, _) ->
    0.
