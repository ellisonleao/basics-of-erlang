-module(second).
-export([hypothenuse/2, perimeter/2,area/2]).

% hypothenuse calculates a hypothenuse of a right-angle triangle given the 2 catets lengths
hypothenuse(A, B) ->
    math:sqrt(first:square(A) + first:square(B)).

% perimeter calculates a right-angle triangle perimeter given 2 catets lenghts
perimeter(A,B) ->
    hypothenuse(A,B) + A + B.

% area calculates a right-angle triangle area given 2 catets lenghts
area(A,B) ->
    first:area(A,B,hypothenuse(A,B)).
