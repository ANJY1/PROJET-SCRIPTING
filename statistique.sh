# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/sh

yad --title="Projet Scripting" \
--form --width="100" --height="100" \
--text="\n\n\t\t\t\t\t\t\t\t\t Choissisez une option:\n\n\n\t\t\t\t\t" \
--buttons-layout=center \
--button="gnuplot":1 \
--button="plot":2 \



case $? in
	1)
	  ./courbe.sh
		;;
        2)
	./courbe2.sh
                ;;
    
esac

