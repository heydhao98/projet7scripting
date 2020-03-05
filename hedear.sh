#!/bin/bash

helps()
{
 echo "programe qui permet d afficher les caracteristiques hardware de votre machine /proc"
}


usage()
{
echo "$0 {-lp | -spid | -lcpu | -h  | -a }  " 
}


cpuinfo()
{
grep "model name" /proc/cpuinfo
}

lp()
{
ps

}

menu ()
{
echo "|------------------------------------------------------------------------------------|"
echo "|                                projet 7 : realiser par heythem et firas            |"
echo "|------------------------------------------------------------------------------------|"
echo "|    m   : menu                              					   |"
echo "|    lp : lister les processus               					   |"
echo "|    spid : afficher l etat dont le pid est second argument                          |"
echo "|    lcpu : les indormations en relation avec le cpu                                 |"
echo "|    h : helps                                                  			   |"
echo "|    a : affichage                                                                   |"
echo "|    q : quit                                                                        |"
echo "|------------------------------------------------------------------------------------|"





echo ""
echo m : menu
echo "lp" : lister les processus
echo "spid" : afficher l etat dont le pid est second argument
echo "lcpu" : les indormations en relation avec le cpu
echo h : helps
echo a : affichage
echo q : quit
echo ""

}

etat()
{
cut -f 3 /proc/$1/stat
}



affichage()
{

	cat savepoint.txt 
}








