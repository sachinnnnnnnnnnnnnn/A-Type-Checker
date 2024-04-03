:- use_module(library(lists)).
hastype(_, intT(N), intT) :- integer(N), !.
hastype(_, true, boolT) :- !.
hastype(_, false, boolT) :- !.
hastype(G, varT(X), T) :- member((X, T), G), !.
hastype(G, plus(X, Y), intT) :- hastype(G, X, intT), hastype(G, Y, intT), !.
hastype(G, mul(X, Y), intT) :- hastype(G, X, intT), hastype(G, Y, intT), !.
hastype(G, and(X, Y), boolT) :- hastype(G, X, boolT), hastype(G, Y, boolT), !.
hastype(G, or(X, Y), boolT) :- hastype(G, X, boolT), hastype(G, Y, boolT), !.
hastype(G, not(X), boolT) :- hastype(G, X, boolT), !.
hastype(G, equal(X, Y), boolT) :- hastype(G, X, intT), hastype(G, Y, intT), !.
hastype(G, greater(X, Y), boolT) :- hastype(G, X, intT), hastype(G, Y, intT), !.
