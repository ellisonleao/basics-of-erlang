-module(recursion).
-export([fib/1,pieces/1]).

% fibbonacci sequence
fib(0) -> 0;
fib(1) -> 1;
fib(X) when X > 1 -> fib(X-2) + fib(X-1).

% pieces func
pieces(0) ->
    1;
pieces(X) when X > 0 ->
    X + pieces(X-1).
