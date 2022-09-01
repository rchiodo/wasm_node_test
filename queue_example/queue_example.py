import threading
import queue

print(f"Main thread {threading.get_ident()}")
q = queue.Queue()

def worker():
    print(f"Worker thread {threading.get_ident()}")
    while True:
        item = q.get()
        print(f'Working on {item}')
        print(f'Finished {item}')
        q.task_done()

# Turn-on the worker thread.
threading.Thread(target=worker, daemon=True).start()

# Send tend task requests to the worker.
for item in range(10):
    q.put(item)

# Block until all tasks are done.
q.join()
print('All work completed')