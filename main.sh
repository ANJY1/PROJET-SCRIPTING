# PROJET-SCRIPTING
Projet réalisé en langage shell 
source pro.sh
if [ $# -ge 1 ]; then
     if [ $1 == "-search" ]; then
        chercher_exe
     elif [ $1 == "-search-rm" ]; then
        supprimer_exe
     elif [ $1 == "-search-ls" ]; then
         lister_exe
     elif [ $1 == "-per" ]; then
         pourcentage
     elif [ $1 == "-s" ]; then
         sauvegarder   
     else
       echo "Consulter le help via -h "
       read aide
       if [ $aide == "-h" -o $aide == "-help" ]; then
             cat help.txt
       else
             exit
       fi
     fi
   else
   echo "Nombre d'arguments insuffisant!"
fi
