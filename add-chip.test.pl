% consult this file and use the query as tests case
:- use_module('add-chip').
:- use_module('generate-tree').

% maquinaEstadoInicial(2, M), ingresarFicha(M, X), ingresarFicha(X, Y), ingresarFicha(Y, Z).

% M = maquina(nodo(1, 0), maquina(nodo(2, 0), tronera(4, 0), tronera(5, 0)), maquina(nodo(3, 0), tronera(6, 0), tronera(7, 0))),
% X = maquina(nodo(1, 1), maquina(nodo(2, 0), tronera(4, 0), tronera(5, 0)), maquina(nodo(3, 1), tronera(6, 0), tronera(7, 1))),
% Y = maquina(nodo(1, 0), maquina(nodo(2, 1), tronera(4, 0), tronera(5, 1)), maquina(nodo(3, 1), tronera(6, 0), tronera(7, 1))),
% Z = maquina(nodo(1, 1), maquina(nodo(2, 1), tronera(4, 0), tronera(5, 1)), maquina(nodo(3, 0), tronera(6, 1), tronera(7, 1))).
