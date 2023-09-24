import asyncio

class Task:
    def __init__(self):
        self.stop_flag = False

    async def run(self):
        while not self.stop_flag:
            await self.task_logic()

    def stop(self):
        self.stop_flag = True

    async def task_logic(self):
        # Ваш код для выполнения задачи

async def main():
    task1 = Task()
    task2 = Task()

    task1_task = asyncio.create_task(task1.run())
    task2_task = asyncio.create_task(task2.run())

    while not stop:
        # Ваш непрерывно выполняемый код

        # Вызываем task1 и task2 во время выполнения непрерывного цикла
        await asyncio.gather(task1_task, task2_task)

    task1.stop()
    task2.stop()

    await task1_task
    await task2_task

asyncio.run(main())
