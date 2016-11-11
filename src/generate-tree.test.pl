% consult this file and use the query as tests case
:- use_module('generate-tree').

% maquinaEstadoInicial(1, M).

% M = maquina(nodo(1, 0), tronera(2, 0), tronera(3, 0)).

% maquinaEstadoInicial(2, M).

% M = maquina(
%   nodo(1, 0),
%   maquina(nodo(2, 0), tronera(4, 0), tronera(5, 0)),
%   maquina(nodo(3, 0), tronera(6, 0), tronera(7, 0))
% ).


% maquinaEstadoInicial(3, M).

% M = maquina(
%   nodo(1, 0),
%   maquina(
%     nodo(2, 0),
%     maquina(nodo(4, 0), tronera(8, 0), tronera(9, 0)),
%     maquina(nodo(5, 0), tronera(10, 0), tronera(11, 0))
%   ),
%   maquina(
%     nodo(3, 0),
%     maquina(nodo(6, 0), tronera(12, 0), tronera(13, 0)),
%     maquina(nodo(7, 0), tronera(14, 0), tronera(15, 0))
%   )
% ).

% maquinaEstadoInicial(4, M).

% M = maquina(
%   nodo(1, 0),
%   maquina(
%     nodo(2, 0),
%     maquina(
%       nodo(4, 0),
%       maquina(nodo(8, 0), tronera(16, 0), tronera(17, 0)),
%       maquina(nodo(9, 0), tronera(18, 0), tronera(19, 0))
%     ),
%     maquina(
%       nodo(5, 0),
%       maquina(nodo(10, 0), tronera(20, 0), tronera(21, 0)),
%       maquina(nodo(11, 0), tronera(22, 0), tronera(23, 0))
%     )
%   ),
%   maquina(
%     nodo(3, 0),
%     maquina(
%       nodo(6, 0),
%       maquina(nodo(12, 0), tronera(24, 0), tronera(25, 0)),
%       maquina(nodo(13, 0), tronera(26, 0), tronera(27, 0))
%     ),
%     maquina(
%       nodo(7, 0),
%       maquina(nodo(14, 0), tronera(28, 0), tronera(29, 0)),
%       maquina(nodo(15, 0), tronera(30, 0), tronera(31, 0))
%     )
%   )
% ).
