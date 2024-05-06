mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(lia, gal).
mae(eva, noe).

pai(rai, noe).
pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(ary, gal).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).

homem(ivo).
homem(gil).
homem(rai).
homem(noe).
homem(ary).

gerou(X, Y) :-
    pai(X, Y);
    mae(X, Y).

filho(X, Y) :-
    gerou(Y, X), homem(X).

filha(X, Y) :-
    gerou(Y, X), mulher(X).

tio(X, Y) :-
    gerou(Z, Y), gerou(V, Z), gerou(V, X), homem(X), X\=Z.

tia(X, Y) :-
    gerou(Z, Y), gerou(V, Z), gerou(V, X), mulher(X), X\=Z.

primo(X, Y) :-
    homem(X), gerou(Z, X), tio(Z, Y);
    homem(X), gerou(Z, X), tia(Z,Y).

prima(X, Y) :-
    mulher(X), gerou(Z, X), tio(Z,Y);
    mulher(X), gerou(Z, X), tia(Z,Y).

avô(X, Y) :-
    homem(X), gerou(X, Z), gerou(Z, Y).

avó(X, Y) :-
    mulher(X), gerou(X, Z), gerou(Z, Y).

casal(X,Y) :-
    gerou(X, Z), gerou(Y, Z).
