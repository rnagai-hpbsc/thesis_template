copy main.tex temp.tex
platex temp.tex
biber temp
platex temp.tex
platex temp.tex
dvipdfmx temp.dvi
copy temp.pdf main.pdf
del temp.*
main.pdf

