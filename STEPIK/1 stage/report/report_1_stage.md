---
## Front matter
title: "Отчет по 1 этапа внешних курсов"
subtitle: "Введение"
author: "Рафи Кази ар, НКАбд-03-24"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Ознакомиться с функционалом операционной системы Linux.

# Задание

Просмотреть видео и на основе полученной информации пройти тестовые задания.


# Выполнение лабораторной работы

1 Этап:

![ 1](image/1.png){#fig:001 width=70%}

Курс действительно называется "Введение в Linux", поэтому с этим вопросом проблем не возникло.

![ 2](image/2.png){#fig:002 width=70%}

Прочитав критерии прохождения курса, я отметила необходимые утверждения.

![3](image/3.png){#fig:003 width=70%}

Стандартная операционная система, предлагаемая большей частью магазинов - windows, именно она стоит у меня на основном компьютере.

![ 4](image/4.png){#fig:004 width=70%}

На свой компьютер мы устанавливали специальную программу VirtualBox, которая нужна для подключения одной операционной на другой.

![ 5](image/5.png){#fig:005 width=70%}

Да, моя виртуальная машина хорошо работает, и у меня получилось запустить с неё Линукс

![ 6](image/6.png){#fig:006 width=70%}

Я создала документ, и перед сохранением выбрала нужный формат, а после я ег прикрепила к курсу. Прикрепленный файл видно на скриншоте.

![ 7](image/7.png){#fig:007 width=70%}

deb — формат пакетов операционных систем проекта Debian. Используется также их производными, такими как Ubuntu, Knoppix и другими.

![ 8](image/8.png){#fig:008 width=70%}

![9](image/9.png){#fig:009 width=70%}

Здесь на скриншоте видно, что установив программу медиапроигрывателя я посмотрела, кто авторы программы и записала первую фамилию.

![10](image/10.png){#fig:010 width=70%}

Менеджер обновлений — это программа для обновления установленного программного обеспечения в дистрибутивах ОС Linux, основанных на Debian или использующих систему управления пакетами APT. 

![11](image/11.png){#fig:011 width=70%}

Ассоль - героиня литературного произведения, а термин - это определение.

![12](image/12.png){#fig:012 width=70%}

Интерфейс командной строки Linux является регистрозависимым.

![13](image/13.png){#fig:013 width=70%}

Интерфейс командной строки Linux является регистрозависимым, поэтому не подходит вариант, где буква А - маленькая(строчная).

![14](image/14.png){#fig:014 width=70%}

Я прописываю полный путь до директории Downloads, так как на данный момент нахожусь в другой директории.

![15](image/15.png){#fig:015 width=70%}

rm -r удаление директории и рекуррентное удаление файлов, находящихся в ней.

![16](image/16.png){#fig:016 width=70%}

Это я проверила эмпирическим путём, что видно в ходе скринкаста.

![17](image/17.png){#fig:017 width=70%}

Это запуск программы в фоновом режиме.

![18](image/18.png){#fig:018 width=70%}

Здесь видно выполнение команды.

![20](image/20.png){#fig:020 width=70%}

Автоматически поток ошибок выводится на экран - это видно, например, в ходе выполненных лабораторных. В файл будет поток выводиться, если его перенаправить.

![21](image/21.png){#fig:021 width=70%}

< file — использовать файл как источник данных для стандартного потока ввода.

> file — направить стандартный поток вывода в файл. Если файл не существует, он будет создан, если существует — перезаписан сверху.

2> file — направить стандартный поток ошибок в файл. Если файл не существует, он будет создан, если существует — перезаписан сверху.

>>file — направить стандартный поток вывода в файл. Если файл не существует, он будет создан, если существует — данные будут дописаны к нему в конец.

2>>file — направить стандартный поток ошибок в файл. Если файл не существует, он будет создан, если существует — данные будут дописаны к нему в конец.

&>file или >&file — направить стандартный поток вывода и стандартный поток ошибок в файл. Другая форма записи: >file 2>&1.

![22](image/22.png){#fig:022 width=70%}

1. cat names.txt | ./interacter.py | less = вывод на экран

2. cat names.txt | ./interacter.py 2>err.txt | less = вывод ошибки в err.txt

![23](image/23.png){#fig:023 width=70%}

Команда wget -P /home/alex/Pictures http://example.com/example.jpg  скачивает файл и даже размещает его, назвав example.jpg, в папке /home/alex/Pictures. Но после этих манипуляций срабатывает часть ключа -O 1.jpg и только что скачаный example.jpg конвертируется в 1.jpg и размещается в текущей директории, в которой мы находимся, потому что путь файла уже не указан, указано только название - 1.jpg.

![24](image/24.png){#fig:024 width=70%}

-q
--quiet
    Turn off Wget's output. 

![25](image/25.png){#fig:025 width=70%}

4.2 Типы файлов

При загрузке материалов из Интернета вы часто захотите ограничить поиск только определенными типами файлов. Например, если вы заинтересованы в загрузке GIF-файлов, вы не будете рады получить кучу документов PostScript, и наоборот.

Wget предлагает две опции для решения этой проблемы. В описании каждой опции перечислены краткое имя, длинное имя и эквивалентная команда в .wgetrc.

'-A acclist'
'--accept acclist'
'accept = acclist'
'--accept-regex urlregex'
'accept-regex = urlregex'

    Таким образом, указав 'wget -A gif,jpg', Wget загрузит только файлы, заканчивающиеся на 'gif' или 'jpg', то есть GIF и JPEG. С другой стороны, 'wget -A "zelazny*196[0-9]*" загрузит только файлы, начинающиеся с 'zelazny' и содержащие в себе числа от 1960 до 1969. Описание того, как работает сопоставление шаблонов, можно найти в руководстве к вашей оболочке.

![26](image/26.png){#fig:026 width=70%}

![27](image/27.png){#fig:027 width=70%}

gzip (сокращение от GNU Zip) — утилита сжатия и восстановления (декомпрессии) файлов, использующая алгоритм Deflate.

![28](image/28.png){#fig:028 width=70%}

c - архиватор

j - указатель на тип архиватора bzip 

f - потому что создаем архив в файловой системе

![29](image/29.png){#fig:029 width=70%}

`?` = один символ

`alexey` = маленькая буква

И файл должен быть `jpeg`, а не `jpg`

![30](image/30.png){#fig:030 width=70%}

Регистр - маленькая буква, слово - `world`, а не `word`

![31](image/31.png){#fig:031 width=70%}


`grep -r "love" ~/Shakespeare/ > 1_m.txt`

# Выводы

Я просмотрела курс и освежила в памяти навыки работы с архивами, скачивание файлов, команды grep и тп.

# Список литературы{.unnumbered}

1. Введение в Linux

::: {#refs}
:::
