:- module(maquina, [maquina/3, nodo/2, tronera/2]).

% tronera
%   outher most nodos of the maquina
%   functionality: accumulate chips.
tronera(ID, N) :-
  integer(ID), integer(N), % both numbers must be integers
  ID > -1, % id: greatter than 1
  N > -1. % amount of chips: greatter than 1

% nodo:
%   inner nodos of the maquina
%   state: 1 chip follows to the left, 0 chip follows to the right
nodo(ID, S) :-
  integer(ID), integer(S), % both numbers must be integers
  ID > -1, % id: greatter than 1
  S = 1 ; S = 0. % state of the nodo

% maquina
%   a complete binary maquina

% basic maquina: an inner nodo and two leaves.
maquina(nodo(ID, N), tronera(IDl, Nl), tronera(IDr, Nr)) :-
  nodo(ID, N),
  tronera(IDl, Nl),
  tronera(IDr, Nr).

% inner maquina: an inner nodo and two maquinas.
maquina(nodo(ID, N), maquina(NodoL, LTl, LTr), maquina(NodoR, RTl, RTr)) :-
  nodo(ID, N), % nodo
  maquina(NodoL, LTl, LTr), % left maquina
  maquina(NodoR, RTl, RTr). % right maquina
