-module(first).
-export([double/1,mult/2,area/3,square/1]).

% mult returns a multiplication of 2 numbers
mult(X,Y) ->
    X*Y.

% double return a number multiplied by 2
double(X) ->
    mult(2,X).

% area returns the the calculated area given 3 sides lengths
area(A,B,C) ->
    S = (A+B+C)/2,
    math:sqrt(S*(S-A)*(S-B)*(S-C)).

% square return the square of a given number
square(A) ->
    A*A.
