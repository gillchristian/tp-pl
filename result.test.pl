% consult this file and use the query as tests case
:- use_module('generate-tree').
:- use_module('result').

% generateTree(2, M), result(M, 10, X).
% M = tree(node(1, 0), tree(node(2, 0), leaf(4, 0), leaf(5, 0)), tree(node(3, 0), leaf(6, 0), leaf(7, 0))),
% X = [leaf(4, 2), leaf(5, 3), leaf(6, 2), leaf(7, 3)] .
