% WARNING: DO NOT CONSULT THIS FILE!!!
% consult these 2 files, and then do the test query

consult('add-chip').
consult('generate-tree').

generateTree(2, M), addChip(M, X), addChip(X, Y), addChip(Y, Z).

% M = tree(node(1, 0), tree(node(2, 0), leaf(4, 0), leaf(5, 0)), tree(node(3, 0), leaf(6, 0), leaf(7, 0))),
% X = tree(node(1, 1), tree(node(2, 0), leaf(4, 0), leaf(5, 0)), tree(node(3, 1), leaf(6, 0), leaf(7, 1))),
% Y = tree(node(1, 0), tree(node(2, 1), leaf(4, 0), leaf(5, 1)), tree(node(3, 1), leaf(6, 0), leaf(7, 1))),
% Z = tree(node(1, 1), tree(node(2, 1), leaf(4, 0), leaf(5, 1)), tree(node(3, 0), leaf(6, 1), leaf(7, 1))).
