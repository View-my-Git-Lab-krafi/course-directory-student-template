# https://askubuntu.com/questions/1335772/using-pandoc-crossref-on-ubuntu-20-04
pandoc LAB03-Markdown-Report.md \
  -o LAB03-Markdown-Report.pdf \
  --pdf-engine=xelatex \
  --filter pandoc-crossref \
  -V lang=ru \
  -V babel-lang=ru \
  -V mainfont="DejaVu Serif" \
  -V monofont="DejaVu Sans Mono" \
  -V mathfont="Latin Modern Math" \
  -V geometry:margin=2.5cm

&&


  pandoc LAB03-Markdown-Report.md \
  -o LAB03-Markdown-Report.docx \
  --filter pandoc-crossref
