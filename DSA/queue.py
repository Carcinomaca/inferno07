# Creating a queue 
def create_queue(): 
    queue = [] 
    return queue 
queue = create_queue() 
 
# Check if queue is empty 
def is_empty(queue): 
    return len(queue) == 0 
y=is_empty(queue) 
print(y) 
 
# Add element to queue (Enqueue) 
def enqueue(queue, item): 
    queue.append(item) 
    print("Enqueued:", item) 
 
enqueue(queue, 10) 
enqueue(queue, 20) 
enqueue(queue, 30) 
enqueue(queue, 40) 
print("Queue:", queue) 
 
# Remove element from queue (Dequeue) 
def dequeue(queue): 
    if is_empty(queue): 
        return "Queue is empty" 
return queue.pop(0) 
print("Dequeued:", dequeue(queue)) 
print("Dequeued:", dequeue(queue)) 
print("Current Queue:", queue) 
