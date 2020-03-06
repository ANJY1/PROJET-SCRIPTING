# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/sh

yad --title="Projet Scripting" \
--form --width="300" --height="100" \
--text="\n\n\t\t\t\t\Choissisez une option:\n\n\n\t\t\t\t\t" \
--buttons-layout=center \
--button="Recherche":1 \
--button="Statistiques":2 \
--button="Help":3 \


case $? in
	1)
	 ./recherche.sh
		;;
        2)
	./statistiques.sh
                ;;
         
        3)
	./help.sh
                ;;
esac







