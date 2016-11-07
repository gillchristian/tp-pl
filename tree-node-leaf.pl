:- module(tree, [tree/3, node/2, leaf/2]).

% leaf
%   outher most nodes of the tree
%   functionality: accumulate chips.
leaf(ID, N) :-
  integer(ID), integer(N), % both numbers must be integers
  ID > -1, % id: greatter than 1
  N > -1. % amount of chips: greatter than 1

% node:
%   inner nodes of the tree
%   state: 1 chip follows to the left, 0 chip follows to the right
node(ID, S) :-
  integer(ID), integer(S), % both numbers must be integers
  ID > -1, % id: greatter than 1
  S = 1 ; S = 0. % state of the node

% tree
%   a complete binary tree

% basic tree: an inner node and two leaves.
tree(node(ID, N), leaf(IDl, Nl), leaf(IDr, Nr)) :-
  node(ID, N),
  leaf(IDl, Nl),
  leaf(IDr, Nr).

% inner tree: an inner node and two trees.
tree(node(ID, N), tree(NodeL, LTl, LTr), tree(NodeR, RTl, RTr)) :-
  node(ID, N), % node
  tree(NodeL, LTl, LTr), % left tree
  tree(NodeR, RTl, RTr). % right tree
