#!/usr/bin/env bash
# A contrabarra \ faz com que o caractere a sua direita seja interpretado como um texto puro

echo "A variavel \$0, armazena o nome do ultimo comando executado, que foi: $0"
echo "A variavel \$1, armazena o primeiro argumento passado depois do script, que foi: $1"
echo "A variavel \$2, armazena o segundo argumento passado depois do script, que foi: $2"
echo "A variavel \$3, armazena o terceiro argumento passado depois do script, que foi: $3"
echo "A variavel \$#, armazena o total de argumentos passados depois do script, que foram: $#"
echo "A variavel \$@, armazena a lista de todos os argumentos passados depois do script, que foram: $@"
echo "A variavel \$$, armazena o PID gerado na executação do script, que foram: $$"
echo "A variavel USER, armazena o nome do usuário logado, que é: $USER"
echo -e "A variavel PATH, armazena o local onde o Linux irá procurar por comandos, que é:\n\n $PATH"
echo "A variavel \$? armazena o codigo de retorno de um comando executado, que foi: $?"

