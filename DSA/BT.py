class Node: 
    def __init__(self, data): 
        self.data = data 
        self.left = None 
        self.right = None 
 
 
# Creating nodes 
root = Node('ROOT') 
 
nodeA = Node('Node A') 
nodeB = Node('Node B') 
nodeC = Node('Node C') 
nodeD = Node('Node D') 
nodeE = Node('Node E') 
nodeF = Node('Node F') 
nodeG = Node('Node G') 
 
 
# Building the tree structure 
root.left = nodeA 
root.right = nodeB 
 
nodeA.left = nodeC 
nodeA.right = nodeD 
nodeB.left = nodeE 
nodeB.right = nodeF 
nodeF.left = nodeG 
# Accessing a specific node 
print("Root.Right.Left data:", root.right.left.data)
