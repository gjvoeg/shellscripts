#!/usr/bin/env bash

LISTA_CONFS=$( ls /etc/*.conf )
for CONF in $LISTA_CONFS
do
	echo "O arquivo $CONF foi encontrado no diretório /etc"
done
