### Этот код не предназначен для запуска


# Извлечение каждого элемента в отдельный список
background_bench.append((mog_time, knn_time))
# mog_times, knn_times = [x[0] for x in background_bench], [x[1] for x in background_bench] # Извлечение с помощью генератора для каждого элемента
mog_times, knn_times = zip(*background_bench) # Извлечение с помощью zip
avg_mog = np.mean(mog_times)
avg_knn = np.mean(knn_times)


### Использование остатка от деления для обнудения индекса при переполнении
## Иными словами циклическая инкрементация
max_values = 5
index = 0
for i in range(10):
    index = (index + 1) % max_values
    print(index)
    
    
### Возврат нуля если значение отрицательное
bar = max(0, foo)
# То же для верхнего предела:
bar = min(foo, max_value)

### Слайс массива по столбцам
rois[0]
Out[7]: 
array([[0.05364583, 0.27592593],
       [0.225     , 0.325     ],
       [0.1859375 , 0.5009259 ],
       [0.02552083, 0.33240741]], dtype=float32)
roi = rois[0]
roi[:,0]
Out[9]: array([0.05364583, 0.225     , 0.1859375 , 0.02552083], dtype=float32)
roi[:,1]
Out[10]: array([0.27592593, 0.325     , 0.5009259 , 0.33240741], dtype=float32)
  
## и последующее объединение столбцов
# create two arrays
x = np.array([1, 2, 3])
y = np.array([4, 5, 6])

# stack arrays by columns
z = np.column_stack((x, y))


### Чтение физических клавиш (без X-сервера)
from evdev import InputDevice, ecodes, categorize
 # Найдите путь к вашему клавиатурному устройству
device = InputDevice('/dev/input/event6')  # замените eventX соответствующим путем к вашему устройству
 # Читаем события с клавиатуры
for event in device.read_loop():
    if event.type == ecodes.EV_KEY:
        key_event = categorize(event)
        if key_event.keystate == key_event.key_down:
            print(f"Нажата клавиша: {key_event.keycode}")

### flatten для обычного списка через sum
# Исходный двумерный список
list_2d = [[2, 7]]
# Преобразование в одномерный список
list_1d = sum(list_2d, [])
print(list_1d)  # Вывод: [2, 7]

