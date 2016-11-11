% JUEGO TRONERAS
%
% TP PROLOG
% PARADIGAMS DE PROGRAMACION
%
% UTN - FRSF 2016
%
%
% El código del problema fue separado en módulos,
% de esta forma se puede analizar cada módulo independientemente
%
% Modulo Máquina
%   Archivo: tree-node-leaf.pl
%   Contiene las definiciones de la maquina, los nodos y las troneras.

:- use_module('src/tree-node-leaf').

% Modulo Generador
%   Archivo: generate-tree.pl
%   Expone la funcion MaquinaEstadoInicial, encargada de generar una máquina.

:- use_module('src/generate-tree').

% Modulo Agregar
%   Archivo: add-chip.pl
%   Expone la funcion que permite agregar una ficha en la máquina.

:- use_module('src/add-chip').

% Modulo AgregarMultiple
%   Archivo: add-n-chips.pl
%   Expone la funcion que permite agregar N fichas en la máquina.

:- use_module('src/add-n-chips').

% Modulo Resultado
%   Archivo: result.pl
%   Expone la funcion que permite agregar N fichas en la máquina y
%   obtener los resultados.

:- use_module('src/result').

