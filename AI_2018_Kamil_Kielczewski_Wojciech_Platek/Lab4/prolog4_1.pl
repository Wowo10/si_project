%mem(1,[1,2,3]).
mem(Head, [Head|_]).
mem(Head, [_|Tail]) :- mem(Head, Tail).

%conc([1,2,3],[3,4,5],X).
conc([], L, L).
conc([Head|Tail], L1, [Head|L2]) :- conc(Tail, L1, L2).

equal(X, X).

%delMember(3,[1,2,3,4],X).
delMember(_, [], []).
delMember(X, [X|Xs], Y) :- delMember(X, Xs, Y).
delMember(X, [T|Xs], [T|Y]) :- not(equal(X, T)), delMember(X, Xs, Y).

%len(X,[1,2,3]).
len(0, []).
len(N, [_|Tail]) :- len(N1, Tail), N is N1+1.

%only first call
%rlen(X,[1,[2,3]]).
rlen(0,[]).
rlen(N,[Head|Tail]):-rlen(N1,Tail),rlen(X,Head), N is N1+X.
rlen(1,_).

