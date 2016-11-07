:- module(ingresarVariasFichas, [ingresarVariasFichas/3]).

:- use_module('add-chip').

% Add N chips

% base case: add a chip
ingresarVariasFichas(Prev, 1, Post) :- ingresarFicha(Prev, Post).

% base case: add n chips
ingresarVariasFichas(Prev, N, Post) :-
  ingresarFicha(Prev, Temp),
  X is N - 1,
  ingresarVariasFichas(Temp, X, Post).
