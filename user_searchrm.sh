# PROJET-SCRIPTING
Projet réalisé en langage shell 

#! /bin/bash

source programme.sh

INPUTTEXT=`yad --title="Nom Utilisateur" --text="\t\t\t\t\Tapez votre nom utilisateur:\n\n \t\t\t\ " --entry --entry-label=Utilisateur: --entry-text="Taper ici" --width="400" --height="200" `
uid=$(cat /etc/passwd | grep  $INPUTTEXT | cut -d: -f3)

if [ $uid -ge 1000 ]; then
    if [ $uid -le 60000 ]; then
       for i in `cat /etc/passwd | grep $INPUTTEXT | cut -d: -f6 | ls`
          do
             if [ -x $i ]; then
                rm -i $i
             else
                echo "Operation impossible" 
             fi
          done
        ouvrirFichier
    else
      ./userm.sh
    fi
else
  ./userm.sh
fi

