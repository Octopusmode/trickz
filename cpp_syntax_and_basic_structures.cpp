#include <iostream>

int main() {
    // Вывод текста на консоль
    std::cout << "Привет, мир!" << std::endl;

    // Объявление переменных
    int number = 10;
    float pi = 3.14;
    char letter = 'A';
    bool isTrue = true;

    // Условные операторы
    if (number > 0) {
        std::cout << "Число положительное" << std::endl;
    } else if (number < 0) {
        std::cout << "Число отрицательное" << std::endl;
    } else {
        std::cout << "Число равно нулю" << std::endl;
    }

    // Циклы
    for (int i = 0; i < 5; i++) {
        std::cout << i << std::endl;
    }

    while (number > 0) {
        std::cout << number << std::endl;
        number--;
    }

    // Функции
    int sum(int a, int b) {
        return a + b;
    }

    int result = sum(3, 4);
    std::cout << "Сумма: " << result << std::endl;

    return 0;
}
