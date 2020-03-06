# PROJET-SCRIPTING
Projet réalisé en langage shell 
#!/bin/sh
INPUTTEXT=`yad --title="Afficher les courbes" --text="\t\t\t\t\Tapez votre commande:\n\n \t\t\t\t Via la commande -gnuplot\n ou\n \t\t\t\t via le commande -plot" --entry --entry-label=Commande --entry-text="Taper ici" --width="800" --height="200"`
yad --width="400" --height="200" --text="\t\t\t\t\n\n\nVous avez choisi: $INPUTTEXT"
INPUT='-gnuplot'
INPUT1='-plot'
INPUT5='back'




if [ X"$INPUTTEXT" = X"$INPUT" ];then
	 ./courbe.sh
elif [ X"$INPUTTEXT" = X"$INPUT1" ];then
	 ./courbe2.sh
elif [ X"$INPUTTEXT" = X"$INPUT5" ];then
	 ./menu.sh
fi;
