% WARNING: DO NOT CONSULT THIS FILE!!!
% consult 'generate-tree', and then do the test queries

consult('generate-tree').

generateTree(1, M).
% M = tree(node(1, 0), leaf(2, 0), leaf(3, 0)).

generateTree(2, M).
% M = tree(
%   node(1, 0),
%   tree(node(2, 0), leaf(4, 0), leaf(5, 0)),
%   tree(node(3, 0), leaf(6, 0), leaf(7, 0))
% ).


generateTree(3, M).
% M = tree(
%   node(1, 0),
%   tree(
%     node(2, 0),
%     tree(node(4, 0), leaf(8, 0), leaf(9, 0)),
%     tree(node(5, 0), leaf(10, 0), leaf(11, 0))
%   ),
%   tree(
%     node(3, 0),
%     tree(node(6, 0), leaf(12, 0), leaf(13, 0)),
%     tree(node(7, 0), leaf(14, 0), leaf(15, 0))
%   )
% ).

generateTree(4, M).
% M = tree(
%   node(1, 0),
%   tree(
%     node(2, 0),
%     tree(
%       node(4, 0),
%       tree(node(8, 0), leaf(16, 0), leaf(17, 0)),
%       tree(node(9, 0), leaf(18, 0), leaf(19, 0))
%     ),
%     tree(
%       node(5, 0),
%       tree(node(10, 0), leaf(20, 0), leaf(21, 0)),
%       tree(node(11, 0), leaf(22, 0), leaf(23, 0))
%     )
%   ),
%   tree(
%     node(3, 0),
%     tree(
%       node(6, 0),
%       tree(node(12, 0), leaf(24, 0), leaf(25, 0)),
%       tree(node(13, 0), leaf(26, 0), leaf(27, 0))
%     ),
%     tree(
%       node(7, 0),
%       tree(node(14, 0), leaf(28, 0), leaf(29, 0)),
%       tree(node(15, 0), leaf(30, 0), leaf(31, 0))
%     )
%   )
% ).
