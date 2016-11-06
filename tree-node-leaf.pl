% leaf
%  outher most nodes of the tree
%  functionality: accumulate chips.
leaf(ID, N) :-
  integer(ID), integer(N), % both numbers must be integers
  ID > -1, % id: greatter than 1
  N > -1. % amount of chips: greatter than 1

% node:
%  inner nodes of the tree
%  state: 1 chip follows to the left, 0 chip follows to the right
node(ID, S) :-
  integer(ID), integer(S), % both numbers must be integers
  ID > -1, % id: greatter than 1
  S = 1 ; S = 0. % state of the node

% tree: a complete binary tree
tree(leaf(ID, N), nil, nil) :-
  leaf(ID, N). % tree with a leaf

tree(node(ID, N), tree(A, B, C), tree(D, E, F)) :-
  node(ID, N), % node
  tree(A, B, C), % left tree
  tree(D, E, F). % right tree
