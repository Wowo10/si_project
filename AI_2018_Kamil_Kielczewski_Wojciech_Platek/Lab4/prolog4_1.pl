%member1(1,[1,2,3]).
member1(Head, [Head|_]).
member1(Head, [_|Tail]) :- member1(Head, Tail).

%concat1([1,2,3],[3,4,5],X).
concat1([], L, L).
concat1([Head|Tail], L1, [Head|L2]) :- concat1(Tail, L1, L2).

%delete1([a,[a,b,c,d,e],X]).
delete1(Head, [Head|Tail], Tail).
delete1(X, [Y|Tail],[Y|L1]):-delete1(X, Tail, L1).

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

%reverse2([a,b,c],[], X).
reverse2([Head|Tail], Accumulator, L3):-reverse2(Tail, [Head|Accumulator],L3).
reverse2([],Accumulator,Accumulator).

%sum([1,2,3], X).
sum([], 0).
sum([Head|Tail], N):-sum(Tail, N1), N is N1+Head.

%avg([1,2,3,4,5],X).
avg(List,Avg):-len(List, Len), sum(List, Sum), Avg is Sum/Len.

%only one call
%count(x,X,3).
count(_,[],0).
count(X,[X|Y],Z):-count(X,Y,Z1), Z is Z1+1.

%double([1,2,3],X).
double([],[]).
double([H|T],[H,H|Y]) :- double(T,Y). 

help(_,[],0).
help(Head,[Head|Tail],N):-help(Head,Tail,N1), N is N1+1.

%repeat([x,y,z],X,3).
repeat([],[],_):-!.
repeat([H1|T1],L2,N):-repeat(T1,L3,N),help(H1,L4,N),concat1(L4,L3,L2).

sort([]).
sort([_]).
sort([X,Y|Tail]):-X=<Y,sort([Y|Tail]).

permutation([],[]).
permutation([Head|Tail], L):-permutation(Tail, L1), delete1(Head, L, L1).

%naivesort([2,1,9,0,55,2],X).
naivesort(L1, L2):-permutation(L1, L2), sort(L2).