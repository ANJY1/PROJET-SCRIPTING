# PROJET-SCRIPTING
Projet réalisé en langage shell 
#! /bin/bash
source programme.sh

yad --title=$1 --text-align=center --width="800" --height="200" --button="OK":1 \
 --text-info --back=white --fore=blue < userm.txt 

ouvrirFichier
