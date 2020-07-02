#!/bin/bash

echo "Positive count = $(grep -o -i ",positive"  IMDB\ Dataset.csv | wc -l)" >  analysis.txt
echo "Negative count = $(grep -o -i ",negative"  IMDB\ Dataset.csv | wc -l)" >> analysis.txt
echo "Total unique words = $(cat IMDB\ Dataset.csv|sed 's/[0-9]/ /g'|tr -s [:punct:][:space:] \\n|tr '[:upper:]' '[:lower:]'|sort|uniq|wc  -l)" >> analysis.txt
