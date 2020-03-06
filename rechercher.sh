# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/sh
yad --title="Projet Scripting" \
--form --width="300" --height="100" \
--text="\n\n\t\t\t\ Choissisez une option:\n\n\n\t\t\t\t\t" \
--buttons-layout=center \
--button="search":1 \
--button="search-rm":2 \
--button="search-ls":3 \
--button="cancel":4 \



case $? in
	1)
	 ./user_search.sh
		;;
        2)
	./user_searchrm.sh
                ;;
         
        3)
	./user_searchls.sh
                ;;
        4)
	./main.sh
                ;;
esac




