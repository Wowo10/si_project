isnumber(zero).
isnumber(s(X)):-isnumber(X).

isequal(X,X) :- isnumber(X). 
isequal(s(X),s(Y)) :- isequal(X,Y). 

lessthanequal(zero,X) :- isnumber(X).
lessthanequal(s(X),s(Y)):- lessthanequal(X,Y).

add(zero,X,X) :- isnumber(X). 
add(s(X),Y,s(Z)) :- add(X,Y,Z). 

even(zero).
even(s(s(X))):-even(X).

odd(s(zero)).
odd(s(s(X))):-odd(X).

times(zero, X, zero):-isnumber(X).
times(s(X), Y ,Z):-times(X, Y, Q), add(Y, Q, Z).

quotient(_,zero,_).
quotient(zero,X,zero):-isnumber(X).
quotient(X,Y,s(Z)):-quotient(Q,Y,Z),add(Q,Y,X).

less(zero,X):-isnumber(X),not(isequal(X,zero)).
less(s(X),s(Y)):- less(X,Y).

rem(_,zero,_):-false.
rem(X,Y,X):-less(X,Y).
rem(X,Y,R):-add(Y,Z,X),rem(Z,Y,R).

fact(zero,s(zero)).
fact(s(X),Y):-fact(X, Z), times(s(X),Z,Y).

fib(zero,s(zero)).
fib(s(zero),s(zero)).
fib(s(s(N)),X):-fib(N,X1),fib(s(N),X2),add(X1,X2,X).

shownum(0, zero).
shownum(N, s(X)):-shownum(Z, X), N is Z+1.