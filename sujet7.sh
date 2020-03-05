#!/bin/bash

. hedear.sh




if [ $# != "0" ];then


			while getopts "ahl:s:" opt
			do
					case $opt in

					a)
					affichage;;
					h) 
					helps ;;
					l) 
                                        var1=$OPTARG ;;
					s)
				        var2=$OPTARG;;
					*)
					usage
					exit
				esac



					if [[ $var1 == "cpu" ]];then
					cat /proc/cpuinfo
					elif [[ $var1 == "p" ]];then
					ps
					fi 
 					if [ $2 != "" ];then 
                                        etat $2 
                                        fi 
                                        done
else




	gr=5

	while  [[ "$gr" != "0" &&  "$gr" != "1"  ]]
	do
		echo "interface graphique : (1:oui , 0: non )"
		read gr
	
done

	if [ $gr == "1" ];then
		yad --text="Menu : " \
		--button=gtk-cancel:1 \
		--button="help":2 \
		--button="processus en cours d'execution":3 \
		--button="afficher l information sur cpu ":4 \
		--button="etat du processus ":5 \
		--button="affichage":6

		foo=$?

		[[ $foo -eq 1 ]] 

			if [[ $foo -eq 2 ]]; then

			yad --text="programe qui permet d afficher les caracteristiques hardware de votre machine /proc" \

			elif [[ $foo -eq 3 ]]; then
				clear
			
			ps >processusencours.txt 
			yad --button=back:3 --height=600 --width=1000 --text-info < processusencours.txt  
                        elif [[ $foo -eq 4 ]]; then
			clear
			cat /proc/cpuinfo >cpuinfo.txt
			yad --button=back:3 --height=600 --width=1000 --text-info < processusencours.txt    
			elif [[ $foo -eq 5 ]]; then
			echo "entrez le nom du processus"
                        read pros
			pidof $pros >etatprocessus.txt
			yad --button=back:3 --height=600 --width=1000 --text-info < etatprocessus.txt 
			else
			affichage
			fi
			else
	                menu
                          
	while (true)
	do

		echo ""
		echo "choix : "
	read choix
	case $choix in
a)
        clear
	echo ""
        affichage
	echo ""
	menu;;
h)
	clear
	echo ""
	helps
	echo ""
	menu;;
lp)

	clear
	echo ""
	ps
	echo ""
	menu;;


lcpu)
	
	echo ""
	cat /proc/cpuinfo
	echo ""
	menu;;
spid)
	
	echo "entrez le nom du processus"
        read pros
        pidof $pros
        echo $pros
        pidof $pros
	menu;;
q)
	
	
	exit;;
m)
	
	menu;;

*)
	
        echo "mauvais choix"
        echo ""
	menu;;

		
	esac


	done




fi

fi
