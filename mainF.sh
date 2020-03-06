# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/sh

yad --title="Projet Scripting" \
--form --width="300" --height="100" \
--text="\n\n\t\t\t\t\t\t\t\t\t \n\n\t\t\t\t\t\t\t\t\t\Choissisez une option:\n\n\n\t\t\t\t\t" \
--buttons-layout=center \
--button="Menu textuel":1 \
--button="Menu graphique":2 \
--button="% Fichiers.exe":3 \
--button="Quitter":4 \

case $? in
	1)
	 ./Menutextuel.sh
		;;
        2)
	./Menugraphique.sh
                ;;
        3) 
        ./per.sh
                ;;
        4)
	     exit
                ;;
esac
