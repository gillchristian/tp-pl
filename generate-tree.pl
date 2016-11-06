consult('tree-node-leaf').

% id of node:
%   left: prev node * 2
%   right: left + 1

generateTree(1, M) :-
  M = tree(node(x, 0), leaf(x, 0), leaf(x, 0)).

generateTree(N, M) :-
  Depth is N - 1,
  generateTree(Depth, TL),
  generateTree(Depth, TR),
  M = tree(node(x, 0), TL, TR).
