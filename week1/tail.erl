-module(tail).
-export([fib/1,perfect/3,perfect/1]).

% fib implemented with tail recursion 0 1 1 2 3 5
fib(X) -> fib(X, 0, 1).

fib(0, X, _) -> X;
fib(X, Y, Z) when X > 0 ->
    fib(X-1, Z, Z + Y).

% perfect numbers
perfect(X, X, S) -> X==S;
perfect(X, Y, S) when X rem Y == 0 -> perfect(X, Y+1, S+Y);
perfect(X, Y, S) -> perfect(X, Y+1, S).

perfect(X) -> perfect(X, 1, 0).
