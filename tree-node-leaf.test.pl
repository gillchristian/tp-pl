% consult this file and use the queries as tests cases
:- use_module('tree-node-leaf').

% a basic maquina with a nodo and two a leaves.
maquina(nodo(1,1), tronera(2, 2), tronera(3,2)).

% A: a maquina with a nodo and two basic maquinas.
maquina(nodo(1, 1), maquina(nodo(2,1), tronera(4, 2), tronera(5,2)), maquina(nodo(3,1), tronera(6, 2), tronera(7,2))).

% maquina(
%   nodo(1, 1),
%   maquina(nodo(2,1), tronera(4, 2), tronera(5,2)),
%   maquina(nodo(3,1), tronera(6, 2), tronera(7,2))
% ).


% B: a maquina with a nodo and two A maquinas on each side.
maquina(nodo(1, 1),maquina(nodo(2, 1),maquina(nodo(4,1), tronera(8, 2), tronera(9,2)),maquina(nodo(5,1), tronera(10, 2), tronera(11,2))),maquina(nodo(3, 1),maquina(nodo(6,1), tronera(12, 2), tronera(13,2)),maquina(nodo(7,1), tronera(14, 2), tronera(15,2)))).

% maquina(
%   nodo(1, 1),
%   maquina(
%     nodo(2, 1),
%     maquina(nodo(4,1), tronera(8, 2), tronera(9,2)),
%     maquina(nodo(5,1), tronera(10, 2), tronera(11,2))
%   ),
%   maquina(
%     nodo(3, 1),
%     maquina(nodo(6,1), tronera(12, 2), tronera(13,2)),
%     maquina(nodo(7,1), tronera(14, 2), tronera(15,2))
%   )
% ).

% a maquina with a nodo and two B maquinas on each side.
maquina(nodo(1, 1),maquina(nodo(2, 1),maquina(nodo(4, 1),maquina(nodo(8,1), tronera(16, 2), tronera(17,2)),maquina(nodo(9,1), tronera(18, 2), tronera(19,2))),maquina(nodo(5, 1),maquina(nodo(10,1), tronera(20, 2), tronera(21,2)),maquina(nodo(11,1), tronera(22, 2), tronera(23,2)))),maquina(nodo(3, 1),maquina(nodo(6, 1),maquina(nodo(12,1), tronera(24, 2), tronera(25,2)),maquina(nodo(13,1), tronera(26, 2), tronera(27,2))),maquina(nodo(7, 1),maquina(nodo(14,1), tronera(28, 2), tronera(29,2)),maquina(nodo(15,1), tronera(30, 2), tronera(31,2))))).

% maquina(
%   nodo(1, 1),
%   maquina(
%     nodo(2, 1),
%     maquina(
%       nodo(4, 1),
%       maquina(nodo(8,1), tronera(16, 2), tronera(17,2)),
%       maquina(nodo(9,1), tronera(18, 2), tronera(19,2))
%     ),
%     maquina(
%       nodo(5, 1),
%       maquina(nodo(10,1), tronera(20, 2), tronera(21,2)),
%       maquina(nodo(11,1), tronera(22, 2), tronera(23,2))
%     )
%   ),
%   maquina(
%     nodo(3, 1),
%     maquina(
%       nodo(6, 1),
%       maquina(nodo(12,1), tronera(24, 2), tronera(25,2)),
%       maquina(nodo(13,1), tronera(26, 2), tronera(27,2))
%     ),
%     maquina(
%       nodo(7, 1),
%       maquina(nodo(14,1), tronera(28, 2), tronera(29,2)),
%       maquina(nodo(15,1), tronera(30, 2), tronera(31,2))
%     )
%   )
% ).
