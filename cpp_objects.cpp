#include <iostream>

// Объявление класса
class Rectangle {
private:
    int width;
    int height;

public:
    // Конструктор класса
    Rectangle(int w, int h) {
        width = w;
        height = h;
    }

    // Методы класса
    int getArea() {
        return width * height;
    }
};

int main() {
    // Создание объекта класса
    Rectangle rect(5, 3);

    // Вызов метода объекта
    int area = rect.getArea();
    std::cout << "Площадь прямоугольника: " << area << std::endl;

    return 0;
}
