from __future__ import annotations
from dataclasses import dataclass
from typing import (
    TypeVar,
    Generic,
    Optional,
    Union,
    Tuple,
    Generator,
    List,
    Iterable
)


T = TypeVar('T')


@dataclass
class BDDNode(Generic[T]):
    left: Optional[Union[BDDNode, T]]
    right: Optional[Union[BDDNode, T]]


class MTBDDTree(Generic[T]):
    root: BDDNode
    variables: Tuple[str, ...]

    def __init__(self, variables: Tuple[str, ...]):
        self.variables = variables
        self.root = BDDNode(None, None)

    def insert_into_fn(self, transition: Tuple[Union[int, str], ...], value: T):
        current_node = self.root
        for bit in transition[:-1]:
            if bit == 0:
                if current_node.left is None:
                    current_node.left = BDDNode(None, None)
                current_node = current_node.left
            elif bit == 1:
                if current_node.right is None:
                    current_node.right = BDDNode(None, None)
                current_node = current_node.right
            else:
                # Bit is *
                new_node = BDDNode(None, None)
                current_node.right = new_node
                current_node.left = new_node

                current_node = new_node

        last_bit = transition[-1]
        if last_bit == 0:
            current_node.left = value
        elif last_bit == 1:
            current_node.right = value
        else:
            # Bit is *
            current_node.left = value
            current_node.right = value

    def get_transition_value(self, t: Tuple[int, ...]) -> Optional[T]:
        current_node = self.root
        for bit in t:
            if bit == 0:
                current_node = current_node.left
            else:
                current_node = current_node.right

            if current_node is None:
                return None

        return current_node

    def __iter(self, t: Tuple[int, ...], node: BDDNode) -> Generator[Tuple[Tuple[int, ...], T], None, None]:
        c_node = node
        if type(c_node) == BDDNode:
            if c_node.left is not None:
                yield from self.__iter(t + (0, ), c_node.left)
            if c_node.right is not None:
                yield from self.__iter(t + (1, ), c_node.right)
        else:
            yield (t, c_node)

    def iter_transitions(self) -> Generator[Tuple[Tuple[int, ...], T], None, None]:
        c_node = self.root
        yield from self.__iter(tuple(), c_node)

    def get_nodes_at_level(self, level: int) -> Generator[BDDNode, None, None]:
        yield from self._get_nodes_at_level(self.root, level, 0)

    def _get_nodes_at_level(self, node: BDDNode, L: int, current_L: int) -> Generator[BDDNode, None, None]:
        if current_L == L:
            yield node
        else:
            if node.left == node.right:
                if node.left is not None:
                    yield from self._get_nodes_at_level(node.left, L, current_L+1)
            else:
                if node.left is not None:
                    yield from self._get_nodes_at_level(node.left, L, current_L+1)
                if node.right is not None:
                    yield from self._get_nodes_at_level(node.right, L, current_L+1)

    def get_missing_tree_levels_for_new_vars(self, variables: Tuple[str]) -> List[int]:
        levels: List[int] = []
        self_var_index = 0
        for i, var in enumerate(variables):
            if self_var_index >= len(self.variables):
                levels.append(i)
                continue

            if var == self.variables[self_var_index]:
                self_var_index += 1
            else:
                levels.append(i)

        return levels

    def insert_wildcard_layer_to_nodes(self, nodes: Iterable[BDDNode]):
        for parent_node in nodes:
            intermediade_node = BDDNode(parent_node.left, parent_node.right)
            parent_node.left = intermediade_node
            parent_node.right = intermediade_node

    def insert_wildcard_after_tail(self, tail_pos: int, total_wildcards: int):
        tail_parent_nodes = self.get_nodes_at_level(tail_pos - 1)

        for parent_node in tail_parent_nodes:
            wildcard_tail_left = BDDNode(parent_node.left, parent_node.left)
            wildcard_tail_right = BDDNode(parent_node.right, parent_node.right)
            for i in range(total_wildcards-1):
                wildcard_tail_left = BDDNode(wildcard_tail_left, wildcard_tail_left)
                wildcard_tail_right = BDDNode(wildcard_tail_right, wildcard_tail_right)
            parent_node.left = wildcard_tail_left
            parent_node.right = wildcard_tail_right

    def extend_to_new_variables(self, variables: Tuple[str]):
        # variables should be superset to self.variable_names
        # 0) OK Create a recursive function which gets the nodes at level L
        # 1) OK itentify to which levels in the tree should the variables be
        # placed
        # 2) For each identified level L insert new node with z
        # 3) handle End separate
        missing_levels = self.get_missing_tree_levels_for_new_vars(variables)
        height = len(self.variables)

        has_levels_after_tail = False
        for i, ml in enumerate(missing_levels):
            if ml == height:
                missing_levels = missing_levels[i:]
                has_levels_after_tail = True
                break  # Every new variable is being pushed after tail
            if ml == -1:
                new_root = BDDNode(self.root, self.root)
                self.root = new_root
            else:
                parent_nodes = self.get_nodes_at_level(ml)
                self.insert_wildcard_layer_to_nodes(parent_nodes)
            height += 1

        if has_levels_after_tail:
            self.insert_wildcard_after_tail(height, len(missing_levels))
            # Handle push after tail separate

        self.variables = variables
