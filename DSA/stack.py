# Creating a stack 
def create_stack(): 
  stack = [] 
  return stack 
stack = create_stack() 
# Creating an empty stack 
def check_empty(stack): 
  return len(stack) == 0 
x=check_empty(stack) 
print(x) 
# Adding items into the stack 
def push(stack, item): 
  stack.append(item) 
  print("pushed item: " + item) 
push(stack, str('Ganesh')) 
push(stack, str('Sahu')) 
print(stack) 
# Removing an element from the stack 
def pop(stack): 
  if (check_empty(stack)): 
    return "stack is empty" 
  return stack.pop() 
print("popped item: " + pop(stack))
