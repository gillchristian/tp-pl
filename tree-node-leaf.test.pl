% a basic tree with just a leaf.
tree(leaf(1,2), nil, nil).

% A: a tree with a node and two basic trees.
tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)).

% B: a tree with a node and two A trees on each side.
tree(
  node(1, 1),
  tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)),
  tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil))
).

% a tree with a node and two B trees on each side.
tree(
  node(1, 1),
  tree(
    node(1, 1),
    tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)),
    tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil))
  ),
  tree(
    node(1, 1),
    tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)),
    tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil))
  )
).
