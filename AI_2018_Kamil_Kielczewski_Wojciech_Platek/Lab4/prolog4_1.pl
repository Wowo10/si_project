%member1(1,[1,2,3]).
member1(Head, [Head|_]).
member1(Head, [_|Tail]) :- member1(Head, Tail).

%concat1([1,2,3],[3,4,5],X).
concat1([], L, L).
concat1([Head|Tail], L1, [Head|L2]) :- concat1(Tail, L1, L2).

%delete1([a,[a,b,c,d,e],X]).
delete1(Head, [Head|Tail], Tail).
delete1(X, [Y|Tail],[Y|L1]):-delete(X, Tail, L1).

equal(X, X).

%delMember(3,[1,2,3,4],X).
delMember(_, [], []).
delMember(X, [X|Xs], Y) :- delMember(X, Xs, Y).
delMember(X, [T|Xs], [T|Y]) :- not(equal(X, T)), delMember(X, Xs, Y).

%len([1,2,3],X).
len([], 0).
len([_|Tail], N) :- len(Tail, N1), N is N1+1.

%only first call
%rlen([1,[2,3]],X).
rlen([], 0).
rlen([Head|Tail], N):-rlen(Tail, N1),rlen(Head, X), N is N1+X.
rlen(_, 1).

%reverse1([a,b,c],X).
reverse1([],[]).
reverse1([Head|Tail], L2):-reverse1(Tail, L1), concat1(L1, [Head], L2).

%reverse2([a,b,c],X).
reverse2([Head|Tail], Accumulator, L3):-reverse2(Tail, [Head|Accumulator],L3).
reverse2([],Accumulator,Accumulator).