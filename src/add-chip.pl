:- module(ingresarFicha, [ingresarFicha/2]).

:- use_module('tree-node-leaf').

% updates a nodo by simulating a chip passing through it
updatenodo(nodo(ID, S), Postnodo) :-
  S =:= 0 , Postnodo = nodo(ID, 1);
  S =:= 1 , Postnodo = nodo(ID, 0).

% Add a chip to the maquina, it goes through the nodos ultil it reaches a tronera.

% base case: add a chip to a maquina consisting of a nodo and two leaves.
ingresarFicha(maquina(nodo(IDn, S), tronera(IDl, Nl), tronera(IDr, Nr)), Post) :-
  S =:= 0,
    UNr is Nr + 1,
    Post = maquina(nodo(IDn, 1), tronera(IDl, Nl), tronera(IDr, UNr));
  S =:= 1,
    UNl is Nl + 1,
    Post = maquina(nodo(IDn, 0), tronera(IDl, UNl), tronera(IDr, Nr)).

% generic case: a chip passes through a maquina made of nodo and two maquinas.
ingresarFicha(maquina(nodo(ID, S), Tl, Tr), Post) :-
  S =:= 0,
    updatenodo(nodo(ID, S), Postnodo),
    ingresarFicha(Tr, PostR),
    Post = maquina(Postnodo, Tl, PostR);
  S =:= 1,
    updatenodo(nodo(ID, S), Postnodo),
    ingresarFicha(Tl, PostL),
    Post = maquina(Postnodo, PostL, Tr).
