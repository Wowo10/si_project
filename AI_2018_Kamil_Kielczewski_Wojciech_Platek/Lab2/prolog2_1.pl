parent(joe,jim).
parent(pat,jim).
parent(bob,pat).
parent(bob,ann).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).

male(tom).
male(bob).
male(jim).
male(joe).

female(liz).
female(pam).
female(ann).
female(pat).

child(X,Y):-parent(Y,X).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).

grandparent(X,Y):-parent(X,Z),parent(Z,Y).
greatgrandparent(X,Y):-parent(X,A),parent(A,B),parent(B,Y).

ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z),ancestor(Z,Y).