#!/bin/bash

# backup_script.sh
# Скрипт создает резервную копию самого себя в директории ~/backup

# Определяем домашнюю директорию пользователя
backup_dir="$HOME/backup"

# Создаем директорию backup, если её нет
mkdir -p "$backup_dir"

# Имя текущего скрипта
script_name=$(basename "$0")

# Формируем имя для архивной копии с датой
backup_name="${script_name}.backup_$(date +%Y-%m-%d_%H-%M-%S).tar.bz2"

# Архивируем скрипт в tar.bz2 (высокая степень сжатия)
tar -cjf "$backup_dir/$backup_name" "$script_name"

# Проверяем успешность выполнения архивации
if [ $? -eq 0 ]; then
    echo "Резервная копия успешно создана: $backup_dir/$backup_name"
else
    echo "Ошибка при создании резервной копии!" >&2
    exit 1
fi
