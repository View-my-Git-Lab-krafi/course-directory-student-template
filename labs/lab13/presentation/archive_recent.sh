#!/bin/bash

# Проверяем, указана ли директория
if [[ $# -eq 0 ]]; then
    echo "Использование: $0 <директория>"
    exit 1
fi

target_dir="$1"
archive_name="backup_$(date +%Y-%m-%d).tar.gz"

# Проверяем существование директории
if [[ ! -d "$target_dir" ]]; then
    echo "Ошибка: Директория '$target_dir' не найдена."
    exit 1
fi

# Переходим в целевую директорию, чтобы пути в архиве были относительными
cd "$target_dir" || exit

# Находим все файлы, измененные за последние 7 дней, и архивируем их.
# Ключ -print0 и -0 для tar позволяют работать с файлами, содержащими пробелы.
find . -type f -mtime -7 -print0 | tar -czf "../$archive_name" --null -T -

echo "Архив создан: $(pwd)/../$archive_name"
