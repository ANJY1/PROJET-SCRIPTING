# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/bash


top -o %MEM | head -n 12 | tail -n5 >gnuplotText3.txt

gnuplot << EOF
set terminal postscript eps color enhanced
set output "plot.eps"
plot 'gnuplotText3.txt' u 11:2 w l
EOF
evince plot.eps

./cmd.sh
