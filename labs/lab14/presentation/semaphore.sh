#!/bin/bash

# Аргументы: $1 - время ожидания (t1), $2 - время использования (t2)
t1=$1
t2=$2
semaphore_file="/tmp/lab12_semaphore.lock"

# Функция для ожидания освобождения ресурса
wait_for_resource() {
    local wait_time=0
    # Проверяем существование файла-семафора каждую секунду
    while [ -f "$semaphore_file" ] && [ $wait_time -lt $t1 ]; do
        echo "Процесс $$: Ресурс занят. Ожидание... ($wait_time сек.)"
        sleep 1
        ((wait_time++))
    done

    # Если время ожидания вышло, а ресурс не освободился
    if [ -f "$semaphore_file" ]; then
        echo "Процесс $$: Время ожидания истекло! Ресурс не получен."
        exit 1
    else
        # Если ресурс свободен, занимаем его (создаем файл)
        touch "$semaphore_file"
        echo "Процесс $$: Ресурс получен! Использую в течение $t2 сек."
        return 0
    fi
}

# Функция для освобождения ресурса
release_resource() {
    if [ -f "$semaphore_file" ]; then
        rm -f "$semaphore_file"
        echo "Процесс $$: Ресурс освобожден."
    fi
}

# Главная логика скрипта

# Пытаемся занять ресурс
wait_for_resource

# Если заняли успешно (функция вернула код 0), то используем его
if [ $? -eq 0 ]; then
    # Используем ресурс заданное время
    sleep $t2
    # После использования освобождаем
    release_resource
fi
