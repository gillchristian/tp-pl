tree(leaf(1,2), nil, nil).

tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)).

tree(
  node(1, 1),
  tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil)),
  tree(node(1, 1), tree(leaf(1,2), nil, nil), tree(leaf(1,2), nil, nil))
).

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
