:- module(resultado, [resultado/3]).

:- use_module('add-n-chips').
:- use_module('tree-node-leaf').

% walk maquina: walks a maquina and collects the leaves

% basic case: collect the leaves of a maquina made of a nodo and two leaves.
walkmaquina(maquina(_, tronera(IDl, Nl), tronera(IDr, Nr)), Acc, Leaves) :-
  append(Acc, [tronera(IDl, Nl), tronera(IDr, Nr)], Leaves).

% generic case: walk the treas of a maquina made of a nodo and two maquinas.
walkmaquina(maquina(_, maquina(_, A, B), maquina(_, C , E)), Acc, Leaves) :-
  walkmaquina(maquina(_, A, B), Acc, AccL),
  walkmaquina(maquina(_, C , E), Acc, AccR),
  append(AccL, AccR, Leaves).

% resultado: add N chips and the collect the results
resultado(Prev, N, Leaves) :-
  ingresarVariasFichas(Prev, N, Post),
  walkmaquina(Post, [], Leaves).
