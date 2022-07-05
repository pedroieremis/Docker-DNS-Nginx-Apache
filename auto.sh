#!/bin/bash

op=99
while test $op != 0; do
	echo "0 - Encerrar Script"
	echo "1 - Subir Serviços"
	echo "2 - Parar Serviços"
	read op
	case $op in
	0)
		echo "Script Encerrado!";;
	1)
		echo "IP para dns (IP do Host)>" ; read IP
		cd dns
		docker build -t ubuntu .
		cd primary
		sed -i "s/primary/$IP/g" db.prova.asa.br
		dir=$(pwd)
		docker run -d -p $IP:53:53/udp -p $IP:53:53/tcp --name s1 --hostname dns-s1 -v "$dir"/:/etc/bind --dns $IP ubuntu
		echo
		echo "------------------------------------------------------"
		echo "--------------- DNS EXECUTANDO. IP: $IP --------------"
		echo "------------------------------------------------------"
		echo
		cd ..
		cd ..
		cd web1
		docker build -t nx .
		docker run -d --name web1 -p 9090:80 nx
		echo "------------------------------------------------------"
		echo "---- HTML USANDO NGINX EXECUTANDO NA PORTA 9090! -----"
		echo "------------------------------------------------------"
		cd ..
		cd web2
		docker build -t apache .
		docker run -d --name web2 -p 7070:80 apache
		echo "------------------------------------------------------"
		echo "---- HTML USANDO APACHE EXECUTANDO NA PORTA 7070! ----"
		echo "------------------------------------------------------";;
	2)
		docker rm -f s1
		docker rm -f web1
		docker rm -f web2;;
	*)
		echo "Numero Invalido!!"
	esac
done
