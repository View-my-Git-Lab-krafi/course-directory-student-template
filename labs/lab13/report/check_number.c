#include <stdio.h>
#include <stdlib.h> // Для функции exit()

int main() {
    int number;
    printf("Введите число: ");
    scanf("%d", &number);

    if (number > 0) {
        printf("Число положительное.\n");
        exit(1); // Код возврата 1 для положительного числа
    } else if (number < 0) {
        printf("Число отрицательное.\n");
        exit(2); // Код возврата 2 для отрицательного числа
    } else {
        printf("Число равно нулю.\n");
        exit(0); // Код возврата 0 обычно означает успешное завершение
    }
}
