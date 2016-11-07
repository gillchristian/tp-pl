:- module(result, [result/3]).

:- use_module('add-n-chips').
:- use_module('tree-node-leaf').

% walk tree: walks a tree and collects the leaves

% basic case: collect the leaves of a tree made of a node and two leaves.
walkTree(tree(_, leaf(IDl, Nl), leaf(IDr, Nr)), Acc, Leaves) :-
  append(Acc, [leaf(IDl, Nl), leaf(IDr, Nr)], Leaves).

% generic case: walk the treas of a tree made of a node and two trees.
walkTree(tree(_, tree(_, A, B), tree(_, C , E)), Acc, Leaves) :-
  walkTree(tree(_, A, B), Acc, AccL),
  walkTree(tree(_, C , E), Acc, AccR),
  append(AccL, AccR, Leaves).

% result: add N chips and the collect the results
result(Prev, N, Leaves) :-
  addNChips(Prev, N, Post),
  walkTree(Post, [], Leaves).
