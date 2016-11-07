:- module(generateTree, [generateTree/2]).

:- use_module('tree-node-leaf').

% id of node:
%   left: prev node * 2
%   right: left + 1

% base case: generates a tree with a node and two leaves.
generateTree(1, M, ID) :-
  IDl is ID * 2,
  IDr is IDl + 1,
  M = tree(node(ID, 0), leaf(IDl, 0), leaf(IDr, 0)).

% generic case: generates a tree with a node and two trees.
generateTree(N, M, ID) :-
  Depth is N - 1,
  IDl is ID * 2,
  IDr is IDl + 1,
  generateTree(Depth, TL, IDl),
  generateTree(Depth, TR, IDr),
  M = tree(node(ID, 0), TL, TR).

% "exposed function", calls generate tree with the initial ID (1).
generateTree(N, M) :- generateTree(N, M, 1).
