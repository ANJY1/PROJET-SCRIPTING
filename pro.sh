# PROJET-SCRIPTING
Projet réalisé en langage shell 
#! /bin/bash

chercher_exe()
{
  echo "Saisie un nom d'utilisateur:"
  read user
  uid=$(cat /etc/passwd | grep $user | cut -d: -f3)
  home=$(cat /etc/passwd | grep $user | cut -d: -f6)
  if [[ $uid -ge 1000 && $uid -le 60000 ]]; then
         cd $home
         find -perm -u=x
  else
    echo "Ce n'est pas un utilisateur!"
  fi
}

supprimer_exe()
{
  echo "Saisie un nom d'utilisateur:"
  read user
  uid=$(cat /etc/passwd | grep $user | cut -d: -f3)
  home=$(cat /etc/passwd | grep $user | cut -d: -f6)
  if [[ $uid -ge 1000 && $uid -le 60000 ]]; then
         for i in `cat /etc/passwd | grep $user | cut -d: -f6 | ls`
          do
             if [ -x $i ]; then
                rm -i $i
             else
                echo "Impossible" 
             fi
          done
  else
    echo "Ce n'est pas un utilisateur!"
  fi
        
}

lister_exe()
{
echo "Saisie un nom d'utilisateur:"
  read user
  uid=$(cat /etc/passwd | grep $user | cut -d: -f3)
  home=$(cat /etc/passwd | grep $user | cut -d: -f6)
  if [[ $uid -ge 1000 && $uid -le 60000 ]]; then
         cd $home
             find -perm -u=x | ls -lsha | less > tt.txt | cat tt.txt
  else
    echo "Ce n'est pas un utilisateur!"
  fi
}

pourcentage()
{
echo "Saisie un nom d'utilisateur:"
  read user
  uid=$(cat /etc/passwd | grep $user | cut -d: -f3)
if [[ $uid -ge 1000 && $uid -le 60000 ]]; then
       
     home=$(cat /etc/passwd | grep $user | cut -d: -f6)
     cd $home
     total_fichier=$(find -type f | wc -l )
     total_exe=$(find -perm -u=x | wc -l )
     prod=*
     cent=100
     div=/
     poucent=$(($total_exe $prod $cent))
     echo "Total des fichiers =$total_fichier, nombre des fichiers exécutables =$total_exe"
     echo "pourcentage des fichiers exécutables:"$(($poucent $div $total_fichier))"%"
  else
    echo "Ce n'est pas un utilisateur!"
  fi
}


sauvegarder()
{
total_fichier=$(find -type f | wc -l )
total_exe=$(find -perm -u=x | wc -l )
prod=*
cent=100
div=/
poucent=$(($total_exe $prod $cent))
echo "Date:"$(date +%D+%H-%M)"      " "pourcentage des fichiers.exe:"$(($poucent $div $total_fichier))"%"  > save.txt
}
