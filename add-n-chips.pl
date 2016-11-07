:- module(addNChips, [addNChips/3]).

:- use_module('add-chip').

% Add N chips

% base case: add a chip
addNChips(Prev, 1, Post) :- addChip(Prev, Post).

% base case: add n chips
addNChips(Prev, N, Post) :-
  addChip(Prev, Temp),
  X is N - 1,
  addNChips(Temp, X, Post).
