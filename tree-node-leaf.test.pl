% a basic tree with a node and two a leaves.
tree(node(1,1), leaf(2, 2), leaf(3,2)).

% A: a tree with a node and two basic trees.
tree(
  node(1, 1),
  tree(node(2,1), leaf(4, 2), leaf(5,2)),
  tree(node(3,1), leaf(6, 2), leaf(7,2))
).

% B: a tree with a node and two A trees on each side.
tree(
  node(1, 1),
  tree(
    node(2, 1),
    tree(node(4,1), leaf(8, 2), leaf(9,2)),
    tree(node(5,1), leaf(10, 2), leaf(11,2))
  ),
  tree(
    node(3, 1),
    tree(node(6,1), leaf(12, 2), leaf(13,2)),
    tree(node(7,1), leaf(14, 2), leaf(15,2))
  )
).

% a tree with a node and two B trees on each side.
tree(
  node(1, 1),
  tree(
    node(2, 1),
    tree(
      node(4, 1),
      tree(node(8,1), leaf(16, 2), leaf(17,2)),
      tree(node(9,1), leaf(18, 2), leaf(19,2))
    ),
    tree(
      node(5, 1),
      tree(node(10,1), leaf(20, 2), leaf(21,2)),
      tree(node(11,1), leaf(22, 2), leaf(23,2))
    )
  ),
  tree(
    node(3, 1),
    tree(
      node(6, 1),
      tree(node(12,1), leaf(24, 2), leaf(25,2)),
      tree(node(13,1), leaf(26, 2), leaf(27,2))
    ),
    tree(
      node(7, 1),
      tree(node(14,1), leaf(28, 2), leaf(29,2)),
      tree(node(15,1), leaf(30, 2), leaf(31,2))
    )
  )
).
