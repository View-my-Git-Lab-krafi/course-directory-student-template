#!/bin/bash

# Значения по умолчанию
inputfile=""
outputfile=""
pattern=""
case_sensitive=0
line_numbers=0

# Обработка ключей с помощью getopts
# Опция 'C' и 'n' не требуют аргумента, поэтому после них нет двоеточия
# Для длинных опций мы используем флаги. Стандартный getopts не поддерживает
# длинные опции (--inputfile), поэтому эмулируем их через короткие (-i, -o, -p).
while getopts "i:o:p:Cn" opt; do
  case $opt in
    i) inputfile="$OPTARG" ;; # Ключ -i соответствует --inputfile
    o) outputfile="$OPTARG" ;; # Ключ -o соответствует --outputfile
    p) pattern="$OPTARG" ;; # Ключ -p соответствует --pattern
    C) case_sensitive=1 ;; # Включить чувствительность к регистру
    n) line_numbers=1 ;; # Включить вывод номеров строк
    \?) echo "Неверный ключ: -$OPTARG" >&2
        exit 1 ;;
  esac
done

# Проверка на обязательные параметры
if [[ -z "$inputfile" || -z "$pattern" ]]; then
    echo "Использование: $0 -i inputfile -p pattern [-o outputfile] [-C] [-n]"
    exit 1
fi

# Проверка существования входного файла
if [[ ! -f "$inputfile" ]]; then
    echo "Файл '$inputfile' не найден."
    exit 1
fi

# Построение команды grep
grep_cmd="grep"
if [[ $case_sensitive -eq 1 ]]; then
    grep_cmd="$grep_cmd" # По умолчанию grep чувствителен к регистру, ключ -i отключает это.
    # В задании сказано: -C — различать большие и малые буквы.
    # Это поведение grep по умолчанию, поэтому ничего делать не нужно.
else
    grep_cmd="$grep_cmd -i" # Ключ -i: игнорировать регистр
fi
if [[ $line_numbers -eq 1 ]]; then
    grep_cmd="$grep_cmd -n"
fi

# Выполнение поиска
# Если указан выходной файл, перенаправляем вывод в него, иначе выводим на экран
if [[ -n "$outputfile" ]]; then
    $grep_cmd "$pattern" "$inputfile" > "$outputfile"
    echo "Результаты поиска сохранены в файл: $outputfile"
else
    $grep_cmd "$pattern" "$inputfile"
fi
