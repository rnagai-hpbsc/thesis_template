#!/bin/sh

cp main.tex temp.tex
platex temp
biber temp
platex temp
platex temp
dvipdfmx -o thesis.pdf temp
if [ `uname` = "Darwin" ]; then
  open thesis.pdf
else
  evince thesis.pdf
fi
rm temp*
