#!/bin/bash

# Функция для генерации одной случайной буквы
get_random_letter() {
    # Генерируем случайное число от 0 до 25 (26 букв)
    local random_num=$(( RANDOM % 26 ))
    # Преобразуем число в букву. 65 - код 'A' в ASCII, 97 - код 'a'
    # Для заглавных: printf "\x$(printf %x $((65 + random_num)))"
    printf "\x$(printf %x $((97 + random_num)))"
}

# Задаем длину последовательности (можно вынести в аргумент)
length=10
result=""

# Цикл для генерации последовательности заданной длины
for (( i=0; i<$length; i++ )); do
    # Конкатенируем буквы в строку
    result="${result}$(get_random_letter)"
done

echo "Случайная последовательность: $result"
