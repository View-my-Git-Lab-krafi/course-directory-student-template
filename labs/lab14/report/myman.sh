#!/bin/bash

# Проверяем, передан ли аргумент
if [ $# -eq 0 ]; then
    echo "Ошибка: Укажите имя команды для просмотра справки."
    echo "Пример: ./myman.sh ls"
    exit 1
fi

command_name=$1
man_page_path="/usr/share/man/man1/${command_name}.1.gz"

# Проверяем существование файла справки
if [ -f "$man_page_path" ]; then
    # Если файл найден, открываем его с помощью less
    less "$man_page_path"
elif [ -f "${man_page_path%.gz}" ]; then
    # На случай, если файл не запакован (без .gz)
    less "${man_page_path%.gz}"
else
    echo "Справка для команды '$command_name' не найдена в /usr/share/man/man1/."
    exit 1
fi
