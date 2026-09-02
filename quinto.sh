#!/usr/bin/env bash

PIDFILE="/tmp/caixa.pid"

function iniciar()
{
        if [ -f $PIDFILE ]
        then
              echo "O programa CaixaVerso ja esta executando\n"
        else
              echo "Iniciando o programa CaixaVerso\n"
              touch $PIDFILE
        fi
}

function parar()
{
#		verificar
#		if [ $? -eq 0]
#		then
#		   rm $PIDFILE
#		fi
		if [ -f $PIDFILE ]
                then
                        echo "Parando o programa CaixaVerso\n"
                        rm $PIDFILE
                else
                        echo "O programa CaixaVerso já está parado"
                fi
}

function verificar()
{
	if [ -f $PIDFILE ]
	then
              echo "O programa CaixaVerso ja esta executando\n"
        else
              echo "O programa CaixaVerso esta parado\n"
        fi
}
case $1 in
	start)
		iniciar
	;;	
	stop)
		parar
	;;
	status)
		verificar
	;;
	restart)
		parar
		iniciar
	;;
	*)
		echo "Por favor, use o $(basename "$0") start|stop"
esac


