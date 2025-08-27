#!/bin/bash

# find_by_attr.sh
# Фильтр: читает список файлов из stdin или аргументов и выводит те, что имеют заданный атрибут.
# Использование: 
#   find_by_attr.sh [атрибут] [файл1 файл2 ...] 
#   ls | find_by_attr.sh [атрибут]
#   find_by_attr.sh [атрибут] < filelist.txt

# Проверяем, что указан хотя бы один атрибут
if [ $# -lt 1 ]; then
    echo "Использование: $0 {readable|writable|executable} [file ...]" >&2
    exit 1
fi

attribute="$1"
shift # Удаляем первый аргумент (атрибут) из списка, чтобы остались только файлы

# Если файлы не переданы как аргументы, читаем из стандартного ввода
if [ $# -eq 0 ]; then
    while read -r file; do
        files+=("$file")
    done
else
    files=("$@") # Используем оставшиеся аргументы как массив файлов
fi

# Проверяем каждый файл в списке
for file in "${files[@]}"; do
    # Игнорируем пустые строки
    if [ -z "$file" ]; then
        continue
    fi

    # Проверяем атрибут и выводим файл, если условие выполняется
    case "$attribute" in
        "readable")
            if [ -r "$file" ]; then
                echo "$file"
            fi
            ;;
        "writable")
            if [ -w "$file" ]; then
                echo "$file"
            fi
            ;;
        "executable")
            if [ -x "$file" ]; then
                echo "$file"
            fi
            ;;
        *)
            echo "Неизвестный атрибут: $attribute. Используйте: readable, writable, executable." >&2
            exit 1
            ;;
    esac
done
