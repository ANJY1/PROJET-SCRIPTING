# PROJET-SCRIPTING
Projet réalisé en langage shell 
#! /bin/bash

source programme.sh

INPUTTEXT=`yad --title="Nom Utilisateur" --text="\t\t\t\t\Tapez votre nom utilisateur:\n\n \t\t\t\ " --entry --entry-label=Utilisateur: --entry-text="Taper ici" --width="400" --height="200" `
uid=$(cat /etc/passwd | grep  $INPUTTEXT | cut -d: -f3)

if [ $uid -ge 1000 ]; then
    if [ $uid -le 60000 ]; then
       home=$(cat /etc/passwd | grep  $INPUTTEXT | cut -d: -f6)
       cd $home
       total_fichier=$(find -type f | wc -l )
     total_exe=$(find -perm -u=x | wc -l )
     prod=*
     cent=100
     div=/
     poucent=$(($total_exe $prod $cent))
     echo "Total des fichiers =$total_fichier, nombre des fichiers exécutables =$total_exe "pourcentage des fichiers exécutables:"$(($poucent $div $total_fichier))%" "Date:"$(date +%D+%H-%M)"      " "pourcentage des fichiers.exe:"$(($poucent $div $total_fichier))"%"  > save.txt
        yad --title=$1 --width="800" --height="400" --button="OK":1\
       --text-info --back=white --fore=blue < save.txt 
       ouvrirFichier
    else
      ./userm.sh
    fi
else
  ./userm.sh
fi
