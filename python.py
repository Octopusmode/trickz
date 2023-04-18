# Извлечение каждого элемента в отдельный список
background_bench.append((mog_time, knn_time))
# mog_times, knn_times = [x[0] for x in background_bench], [x[1] for x in background_bench] # Извлечение с помощью генератора для каждого элемента
mog_times, knn_times = zip(*background_bench) # Извлечение с помощью zip
avg_mog = np.mean(mog_times)
avg_knn = np.mean(knn_times)
