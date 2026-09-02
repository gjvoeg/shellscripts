#!/bin/bash
 
SENHA_CORRETA="Caixa#@2026"
 
tentativas=0

while [ $tentativas -lt 3 ]
do
    read -s -p "Digite a senha: " senha

    if [ "$senha" = "$SENHA_CORRETA" ]
    then
        echo "Acesso autorizado! Bem vindo ao sistema."
        exit 0
    fi

    tentativas=$((tentativas+1))
    restantes=$((3-tentativas))

    if [ $restantes -gt 0 ]
    then
        echo "Senha incorreta. Restam $restantes tentativa(s)."
    fi
done

echo "Acesso Bloqueado! Numero maximo de tentativas excedido."
