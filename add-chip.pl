updateNode(node(ID, S), PostNode) :-
  S =:= 0 , PostNode = node(ID, 1);
  S =:= 1 , PostNode = node(ID, 0).

% base case: add a chip to a tree consisting of a node and two leaves.
addChip(tree(node(IDn, S), leaf(IDl, Nl), leaf(IDr, Nr)), Post) :-
  S =:= 0,
    UNr is Nr + 1,
    Post = tree(node(IDn, 1), leaf(IDl, Nl), leaf(IDr, UNr));
  S =:= 1,
    UNl is Nl + 1,
    Post = tree(node(IDn, 0), leaf(IDl, UNl), leaf(IDr, Nr)).

% generic case: a chip passes through a tree made of node and two trees.
addChip(tree(node(ID, S), Tl, Tr), Post) :-
  S =:= 0,
    updateNode(node(ID, S), PostNode),
    addChip(Tr, PostR),
    Post = tree(PostNode, Tl, PostR);
  S =:= 1,
    updateNode(node(ID, S), PostNode),
    addChip(Tl, PostL),
    Post = tree(PostNode, PostL, Tr).
