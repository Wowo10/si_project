edge(a,b).
edge(b,c).
edge(a,d).
edge(d,e).
edge(d,f).
edge(f,a).
edge(f,g).

% go(a,g)
go(X,X).
go(X,Y) :- edge(X,Z), go(Z,Y).

% go1(a,g,[])
go1(X,X,_).
go1(X,Y,T):-edge(X,Z), not(member(Z,[X|T])), go1(Z,Y,[X|T]).

% go2(a,g,[],S)
go2(X,X,A,[X]).
go2(X,Y,A,[X|P]) :- edge(X,Z), not(member(Z,[X|A])), go2(Z,Y,[X|A],P).