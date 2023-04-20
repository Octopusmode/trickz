# Извлечение каждого элемента в отдельный список
background_bench.append((mog_time, knn_time))
# mog_times, knn_times = [x[0] for x in background_bench], [x[1] for x in background_bench] # Извлечение с помощью генератора для каждого элемента
mog_times, knn_times = zip(*background_bench) # Извлечение с помощью zip
avg_mog = np.mean(mog_times)
avg_knn = np.mean(knn_times)

### Использование остатка от деления для обнудения индекса при переполнении
max_values = 5
index = 0
for i in range(10):
    index = (index + 1) % max_values
    print(index)
