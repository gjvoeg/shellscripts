#!/usr/bin/env bash
#Autor: Geraldo Júnior - c158762
#Nome: primeiro.sh
#Data: 31/08/2026
#Versão: 1.0

BANCO="Caixa"

#Declara var BANCO com valor Caixa, do tipo String
SALARIO=20000
#Declara var SALARIO com vlr 20000 do tipo Inteiro

echo "Eu no trabalho no banco $BANCO, como Agente de Segurança, ganho mais de $SALARIO"
#As aspas duplas transformam tudo em texto puro, exceto $ e \
echo 'Eu no trabalho no banco $BANCO, como Agente de Segurança, ganho mais de $SALARIO'
#As aspas simples transformam tudo em texto puro, inclusive $ e \

NUMERO1=10
NUMERO2=20
NUMERO3=30

SOMA=$((NUMERO1 + NUMERO2 + NUMERO3))
MULT=$((NUMERO1 * NUMERO2 * NUMERO3))
SUBT=$((NUMERO3 - NUMERO2 - NUMERO1))

echo -e "\nA soma dos numeros eh: $SOMA\n"
echo -e "A multiplicacao dos numeros eh: $MULT"
echo -e "\nA subtracao dos numeros eh: $SUBT\n"

COMANDO="ls -l"

echo -e "\nO valor da var. COMANDO eh: $COMANDO\n"
echo -e "\nA execucao da var. COMANDO gera o seguinte resultado:"
$COMANDO

SAIDACOMANDO=$( $COMANDO )
echo -e "\nA variavel SAIDACOMANDO captura o valor gerado na exec. do comando, que foi:"
echo $SAIDACOMANDO

