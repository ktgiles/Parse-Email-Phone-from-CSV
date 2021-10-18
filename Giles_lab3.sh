#!/bin/sh

file=$FILE
while getopts :e:p option; 
do
	case "$option" in

	e) EMAIL=$
	egrep -o '[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-z]{3}\>' $2
		;;

	p) PHONE=$	
	egrep -o '\(?[0-9]{3}[)-][0-9]{3}-[0-9]{4}\>' $2
		;;
	*) 
	echo "Invalid argument"
        echo "Usage: ./Giles_lab3.sh (-e|-p) input_file"

		;;

	esac
done

if [ $OPTIND -eq 1 ];
	then echo "Invalid argument"
        echo "Usage: ./Giles_lab3.sh (-e|-p) input_file"
fi

