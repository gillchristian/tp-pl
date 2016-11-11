:- module(maquinaEstadoInicial, [maquinaEstadoInicial/2]).

:- use_module('tree-node-leaf').

% id of nodo:
%   left: prev nodo * 2
%   right: left + 1

% base case: generates a maquina with a nodo and two leaves.
maquinaEstadoInicial(1, M, ID) :-
  IDl is ID * 2,
  IDr is IDl + 1,
  M = maquina(nodo(ID, 0), tronera(IDl, 0), tronera(IDr, 0)).

% generic case: generates a maquina with a nodo and two maquinas.
maquinaEstadoInicial(N, M, ID) :-
  Depth is N - 1,
  IDl is ID * 2,
  IDr is IDl + 1,
  maquinaEstadoInicial(Depth, TL, IDl),
  maquinaEstadoInicial(Depth, TR, IDr),
  M = maquina(nodo(ID, 0), TL, TR).

% "exposed function", calls generate maquina with the initial ID (1).
maquinaEstadoInicial(N, M) :- maquinaEstadoInicial(N, M, 1).
