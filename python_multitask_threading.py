import threading

class Task:
    def __init__(self):
        self.lock = threading.Lock()
        self.stop_flag = False

    def run(self):
        while not self.stop_flag:
            with self.lock:
                self.task_logic()

    def stop(self):
        self.stop_flag = True

    def task_logic(self):
        # Ваш код для выполнения задачи

def main():
    task1 = Task()
    task2 = Task()

    task1_thread = threading.Thread(target=task1.run)
    task2_thread = threading.Thread(target=task2.run)

    task1_thread.start()
    task2_thread.start()

    while not stop:
        # Ваш непрерывно выполняемый код

    task1.stop()
    task2.stop()

    task1_thread.join()
    task2_thread.join()

main()
