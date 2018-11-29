% Zebra

position(X,Y, [X, Y, _, _, _]).
position(X,Y, [_, X, Y, _, _]).
position(X,Y, [_, _, X, Y, _]).
position(X,Y, [_, _, _, X, Y]).

next(X, Y, S) :- position(X, Y, S).
next(X, Y, S) :- position(Y, X, S).

zebra(S) :- length(S,5),
    member([red,english,_,_,_],S),
    member([_,spanish,dog,_,_],S),
    member([green,_,_,coffee,_],S),
    member([_,ukrainian,_,tea,_],S),
    position([ivory,_,_,_,_],[green,_,_,_,_],S),
    member([_,_,snails,_,tennis],S),
    member([yellow,_,_,_,chess],S),
    S=[_,_,[_,_,_,milk,_],_,_],
    S=[[_,norwegian,_,_,_],_,_,_,_],
    next([_,_,_,_,rugby],[_,_,fox,_,_],S),
    next([_,_,_,_,chess],[_,_,horse,_,_],S),
    member([_,_,_,orange_juice,volleyball],S),
    member([_,japanese,_,_,go],S),
    next([_,norwegian,_,_,_],[blue,_,_,_,_],S),
    next([_,_,_,tea,_],[_,_,_,milo,_],S),
    member([_,_,zebra,_,_],S).