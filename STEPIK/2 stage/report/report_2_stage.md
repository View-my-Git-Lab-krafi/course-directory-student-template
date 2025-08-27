---
## Front matter
title: "2 этапа внешних курсов"
subtitle: "Работа на сервере"
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

2 Этап: 

![Задание 1](image/1.png){#fig:001 width=70%}

Удаленный сервер - это компьютер, находящийся в дата-центре, к которому можно получить удаленный доступ через сеть Интернет. 

![Задание 2](image/2.png){#fig:002 width=70%}

Только id_rsa.pub, так как он является открытым.

![Задание 3](image/3.png){#fig:003 width=70%}

-r = Recursively copy entire directories. Note that scp follows symbolic links encountered in the tree traversal.

![Задание 4](image/4.png){#fig:004 width=70%}

Проверяем интернет соединение на предмет того, что устройство не может соединиться с сервером, затем проверяем то, знает ли оно вообще о существовании такой программы.

![Задание 5](image/5.png){#fig:005 width=70%}

FileZilla — свободный многоязычный проект, посвящённый приложениям для FTP. 

![Задание 6](image/6.png){#fig:006 width=70%}

![Задание 7](image/7.png){#fig:007 width=70%}

![Задание 8](image/8.png){#fig:008 width=70%}

![Задание 9](image/9.png){#fig:009 width=70%}

-align
Do full multiple alignment.

![Задание 10](image/10.png){#fig:010 width=70%}

Комбинация Ctrl+С - завершает процесс.
Комбинация Ctrl+Z - приостанавливает процесс.

![Задание 11](image/11.png){#fig:011 width=70%}

![Задание 12](image/12.png){#fig:012 width=70%}

Если сигнал не перехватывается процессом, процесс уничтожается. Следовательно, это используется для изящного завершения процесса. Команда «kill -9» отправляет сигнал уничтожения для немедленного завершения любого процесса, если он присоединен к PID или имени процесса . Это принудительный способ убить/завершить набор процессов

![Задание 13](image/13.png){#fig:013 width=70%}

Запущенная программа потребляет ресурсы CPU, а остановленная нет.

![Задание 15](image/15.png){#fig:015 width=70%}

Приостановленное приложение не выполняет новых действий, поэтому не занимает вычислительные ресурсы компьютера (CPU 0%). 

![Задание 16](image/16.png){#fig:016 width=70%}

![Задание 17](image/17.png){#fig:017 width=70%}

![Задание 18](image/18.png){#fig:018 width=70%}

```
echo "306174 reads; of these:
  306174 (100.00%) were unpaired; of these:
    11 (0.00%) aligned 0 times
    305580 (99.81%) aligned exactly 1 time
    583 (0.19%) aligned >1 times
100.00% overall alignment rate" > bowtie.log

```

![Задание 19](image/19.png){#fig:019 width=70%}

![Задание 20](image/20.png){#fig:020 width=70%}

exit завершает работу tmux

![Задание 21](image/21.png){#fig:021 width=70%}

Мы заходили на сервер с терминала, который и закрыли, а tmux будет продолжать свою работу на сервере.

![Задание 22](image/22.png){#fig:022 width=70%}

Ещё будет предупреждение о том, что работа завершится. Запущенный процесс во вкладке, конечно же, при её закрытии, пропадёт.

![Задание 23](image/23.png){#fig:023 width=70%}

Ctrl+b c - создать новое окно;

![Задание 24](image/24.png){#fig:024 width=70%}

Можно закрыть одно из делений вкладки выполнив команды Ctrl+B и Х.

# Выводы

Я просмотрела курс и освежила в памяти навыки работы с более сложными командами в Линукс.

# Список литературы{.unnumbered}


::: {#refs}
:::
