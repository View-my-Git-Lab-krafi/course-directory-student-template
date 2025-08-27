#!/bin/bash

# my_ls.sh
# Упрощенный аналог команды ls. Выводит информацию о файлах в указанном каталоге.

# Проверяем, передан ли аргумент (путь к каталогу)
target_dir="${1:-.}" # Используем текущий каталог (.), если аргумент не передан

# Проверяем, существует ли целевой каталог и является ли он каталогом
if [ ! -d "$target_dir" ]; then
    echo "Ошибка: '$target_dir' не является каталогом или не существует." >&2
    exit 1
fi

echo "Содержимое каталога '$target_dir':"
echo "--------------------------------"

# Перебираем все элементы в целевом каталоге
for item in "$target_dir"/*; do
    # Получаем только имя файла/каталога без пути
    name=$(basename "$item")

    # Определяем тип и права доступа
    if [ -d "$item" ]; then
        type="d" # directory
    elif [ -f "$item" ]; then
        type="-" # regular file
    else
        type="?" # other (link, device, etc.)
    fi

    # Формируем строку прав доступа
    perms=""
    [ -r "$item" ] && perms="${perms}r" || perms="${perms}-"
    [ -w "$item" ] && perms="${perms}w" || perms="${perms}-"
    [ -x "$item" ] && perms="${perms}x" || perms="${perms}-"

    # Выводим информацию
    printf "%-20s %s%s\n" "$name" "$type" "$perms"
done
