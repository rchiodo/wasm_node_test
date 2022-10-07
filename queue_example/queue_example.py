import threading
import queue
import time

class WriterThread(threading.Thread):
    ''' writer thread writes out the commands in an infinite loop '''

    def __init__(self, exitcmd):
        threading.Thread.__init__(self)
        self._cmd_queue = queue.Queue()
        self._kill_received = False
        self.timeout = 0.1
        self.exitcmd = exitcmd

    def add_command(self, cmd):
        self._cmd_queue.put(cmd, False)

    def run(self):
        ''' just loop and write responses '''
        try:
            while True:
                try:
                    try:
                        cmd = self._cmd_queue.get(True, 0.1)
                    except queue.Empty:
                        if self._kill_received:
                            return  # break if queue is empty and _kill_received
                        else:
                            continue
                except Exception as e:
                    # pydev_log.info('Finishing debug communication...(1)')
                    # when liberating the thread here, we could have errors because we were shutting down
                    # but the thread was still not liberated
                    print(f"Exception getting commands in writer queue: {e}")
                    return


                print(f"Sending cmd {cmd}")

                if cmd == self.exitcmd:
                    print('WriterThread: CMD_EXIT received')
                    break
                if time is None:
                    break  # interpreter shutdown
                time.sleep(self.timeout)
        finally:
            print('WriterThread: exit')

    def empty(self):
        return self._cmd_queue.empty()


class ReaderThread(threading.Thread):
    ''' reader thread reads and dispatches commands in an infinite loop '''

    def __init__(self, writer: WriterThread, rangeLimit: int):
        threading.Thread.__init__(self)
        self._buffer = b''
        self._writer = writer
        self.rangelimit = rangeLimit

    def run(self):
        for i in range(self.rangelimit):
            time.sleep(0.1)
            print(f"Read command {i}")
            self._writer.add_command(i)




# Block until all tasks are done.
w = WriterThread(99)
r = ReaderThread(w, 100)
w.start()
r.start()
w.join()
r.join()
print('All work completed')