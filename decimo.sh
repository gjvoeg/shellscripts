#!/usr/bin/env bash


NOME="Fabio"

SALDO=1000

EXTRATO=""


OPCAO=0


while [ $OPCAO -ne 5 ]

do

    echo "=================="

    echo "  CAIXA ELETRONICO"

    echo "=================="

    echo "1 - Consultar saldo"

    echo "2 - Depositar"

    echo "3 - Sacar"

    echo "4 - Extrato"

    echo "5 - Sair"

    echo "=================="


    read -p "Digite uma opcao: " OPCAO


    case $OPCAO in


        1)

            echo

            echo "Cliente: $NOME"

            echo "Saldo atual: R$ $SALDO"

            echo

        ;;


        2)

            read -p "Digite o valor do deposito: " DEPOSITO


            SALDO=$((SALDO + DEPOSITO))


            EXTRATO="$EXTRATO

	    Deposito: R$ $DEPOSITO"


            echo "Deposito realizado com sucesso!"

            echo "Novo saldo: R$ $SALDO"

            echo

        ;;


        3)

            read -p "Digite o valor do saque: " SAQUE


            if [ $SAQUE -gt $SALDO ]

            then

                echo "Saldo insuficiente."

            else

                SALDO=$((SALDO - SAQUE))


                EXTRATO="$EXTRATO

Saque: R$ $SAQUE"


                echo "Saque realizado com sucesso!"

                echo "Saldo atual: R$ $SALDO"

            fi


            echo

        ;;


        4)

            echo

            echo "========== EXTRATO =========="

            echo "Cliente: $NOME"

            echo "$EXTRATO"

            echo "Saldo atual: R$ $SALDO"

            echo "============================="

            echo

        ;;


        5)

            echo "Obrigado por utilizar o Caixa Eletronico."

        ;;


        *)

            echo "Opcao invalida."

        ;;


    esac


done
