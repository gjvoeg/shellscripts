#!/usr/bin/env bash
#Script em shell que verifique se o valor de determinada variável
#digitada é Caixa. Se for, exibir msg Voce esta no maior banco do pais
#Se não, exibir Nao confiamos no banco X


CX="Caixa"
CX1="CAIXA"
CX2="caixa"

read -p "Qual o nome do banco em que voce possui conta?: " BANCO

if [ "$BANCO" == "$CX" ] || [ "$BANCO" == "$CX1" ] || [ "$BANCO" == "$CX2" ]
then
	echo "Voce esta no maior banco do pais: $BANCO"
else
	echo "Nao confiamos no banco $BANCO, vem para ca"
fi


