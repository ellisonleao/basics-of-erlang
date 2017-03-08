-module(assignment).
-export([perimeter/1,area/1,enclose/1,bits/1]).

% perimeter
perimeter({triangle,A,B,C}) when A+B>C,A+C>B,B+C>A -> A+B+C;
perimeter({square,A}) when A>=0 -> 4*A;
perimeter({rectangle,W,H}) when W>=0,H>=0 -> 2*(W+H);
perimeter({circle,R}) when R>=0 -> 2*math:pi()*R.

% area
area({triangle,A,B,C}) when A+B>C,A+C>B,B+C>A ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));
area({square,A}) when A>=0 -> A*A;
area({rectangle,W,H}) when W>=0,H>=0 -> W*H;
area({circle,R}) when R>=0 -> math:pi()*R*R.

% enclose
enclose({triangle,A,B,C}) when A+B>C,A+C>B,B+C>A ->
  X = lists:max([A,B,C]),
  Y = area({triangle,A,B,C}),
  H = Y/(0.5*X),
  {rectangle,X,H};
enclose({square,A}) when A>=0 -> {rectangle,A,A};
enclose({rectangle,W,H}) when W>=0,H>=0 -> {rectangle,W,H};
enclose({circle,R}) when R>=0 ->
  D=2*R,
  {rectangle,D,D}.

% Direct recursion
bitsDirect(0) -> 0;
bitsDirect(N) when N>=0 -> bitsDirect(N div 2) + N rem 2.

%Tail recursion
bits(N) when N>=0 -> bits(N,0).

bits(0,A) -> A;
bits(N,A) -> bits(N div 2, A+(N rem 2)).
