isnumber(zero).
isnumber(s(X)):-isnumber(X).

isequal(X,X) :- isnumber(X). 
isequal(s(X),s(Y)) :- isequal(X,Y). 

lessthanequal(zero,X) :- isnumber(X).
lessthanequal(s(X),s(Y)):- lessthanequal(X,Y).

add(zero,X,X) :- isnumber(X). 
add(s(X),Y,s(Z)) :- add(X,Y,Z). 

odd(X):-isnumber(X).