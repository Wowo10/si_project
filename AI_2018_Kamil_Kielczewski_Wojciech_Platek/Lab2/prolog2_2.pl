edge(p(1,1),p(2,2)).
edge(p(1,2),p(2,2)).
edge(p(2,2),p(2,3)).
edge(p(2,3),p(3,3)).
edge(p(2,2),p(3,1)).
edge(p(3,1),p(2,1)).

dpath(X,Y):-edge(X,Y).
dpath(X,Y):-edge(X,Z),dpath(Z,Y).

%edge(p(2,1),p(2,2)). makes dpath endless in some cases.