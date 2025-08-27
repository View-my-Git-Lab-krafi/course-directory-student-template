#!/bin/bash

# random_letters.sh
# Генерирует случайную последовательность букв латинского алфавита.

# Задаем длину последовательности по умолчанию
length=${1:-10}

# Проверяем, что аргумент - число
if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: длина должна быть положительным числом." >&2
    exit 1
fi

# Строка, из которой будем выбирать символы
letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
letters_len=${#letters} # Получаем длину строки letters

echo "Случайная последовательность из $length букв:"
# Генерируем последовательность заданной длины
for (( i=0; i < length; i++ )); do
    # Генерируем случайный индекс в диапазоне [0, letters_len - 1]
    random_index=$(( RANDOM % letters_len ))
    # Извлекаем символ по сгенерированному индексу
    printf "%s" "${letters:random_index:1}"
done

# Добавляем перевод строки в конце
echo
