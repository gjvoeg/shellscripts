#!/usr/bin/env bash

NUMERO=0

while [ $NUMERO -lt 10 ]
do
	echo "Numero: $NUMERO"
	NUMERO=$(( $NUMERO + 1))
done
