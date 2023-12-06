#include <iostream>

int main() {
    // Объявление и инициализация массива
    int numbers[5] = {1, 2, 3, 4, 5};

    // Обращение к элементам массива
    std::cout << numbers[0] << std::endl;  // Выводит 1
    std::cout << numbers[2] << std::endl;  // Выводит 3

    // Изменение элементов массива
    numbers[1] = 10;

    // Цикл для обхода массива
    for (int i = 0; i < 5; i++) {
        std::cout << numbers[i] << std::endl;
    }

    return 0;
}
