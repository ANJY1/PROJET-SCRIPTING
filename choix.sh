# PROJET-SCRIPTING
Projet réalisé en langage shell 

#!/bin/sh
INPUTTEXT=`yad --title="Afficher les fichiers exécutables" --text="\t\t\t\t\Tapez votre commande:\n\n \t\t\t\t1-Via la commande -search\n\n \t\t\t\t 2-via le commande -search-rm\n\n \t\t\t\t 3-via le commande -search-ls " --entry --entry-label=Commande: --entry-text="Taper ici" --width="800" --height="200" `
#yad --width="400" --height="200" --text="\t\t\t\t\n\n\nVous avez choisi: $INPUTTEXT"
INPUT='-search'
INPUT1='-search-rm'
INPUT2='-search-ls'
INPUT5='back'




if [ X"$INPUTTEXT" = X"$INPUT" ];then
	 ./user_search.sh
elif [ X"$INPUTTEXT" = X"$INPUT1" ];then
	
	./user_searchrm.sh
elif [ X"$INPUTTEXT" = X"$INPUT2" ];then
	./user_searchls.sh
elif [ X"$INPUTTEXT" = X"$INPUT5" ];then
	./main.sh
else
    ./main.sh
fi
