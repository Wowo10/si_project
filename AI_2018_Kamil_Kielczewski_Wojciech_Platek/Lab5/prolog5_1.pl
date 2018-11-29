% Race

didbetter(X,Y,order(X,Y,_)).
didbetter(X,Y,order(X,_,Y)).
didbetter(X,Y,order(_,X,Y)).
clues(S) :- didbetter(child(peter,_),child(_,red),S), didbetter(child(jack,gold),child(_,green),S).