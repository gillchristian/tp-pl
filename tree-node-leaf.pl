% leaf
leaf(ID, N) :- integer(ID), integer(N), ID > -1, N > -1.

% node
node(ID, S) :- integer(ID), integer(S), ID > -1, S = 1 ; S = 0.

% tree
tree(leaf(ID, N), nil, nil) :- leaf(ID, N).
tree(node(ID, N), tree(A, B, C), tree(D, E, F)) :-
  node(ID, N),
  tree(A, B, C),
  tree(D, E, F).
