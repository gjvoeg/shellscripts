#!/usr/bin/env bash
#Script em shell que verifique se o valor de determinada variável
#digitada é Caixa. Se for, exibir msg Voce esta no maior banco do pais
#Se não, exibir Nao confiamos no banco X


shopt -s nocasematch

CX="Caixa"

read -p "Qual o nome do banco que você possui conta: " BANCO

if [[ "$BANCO" == "$CX" ]]
then
echo "Você está no maior banco do país, que é: $BANCO"
else
echo "Não confiamos no Banco $BANCO, vem para cá."
fi

shopt -u nocasematch
