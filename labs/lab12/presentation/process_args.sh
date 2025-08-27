#!/bin/bash

echo "Общее количество переданных аргументов: $#"
echo "Total number of arguments passed: $#"
echo "Список всех аргументов:"
echo "List of all arguments:"

count=1
for arg in "$@"; do
    echo "Аргумент №$count: $arg"
    echo "Argument #$count: $arg"
    ((count++))
done

echo "---"

echo "Вывод с использованием shift:"
echo "Output using shift:"
count=1
while [ $# -gt 0 ]; do
    echo "Аргумент №$count: $1"
    echo "Argument #$count: $1"
    ((count++))
    shift
done
