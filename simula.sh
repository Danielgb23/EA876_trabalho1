#!/bin/bash
#$1 eh o arquivo.s a ser simulado a saida eh o valor final de R0

#funcao para ler XML
read_dom () {
    local IFS=\>
    read -d \< ENTITY CONTENT
}

	#gera os codigos em assembly
	#./main > tests/test$i.s < tests/test$i.in 

	#executa os codigos no visual gerando um log dessa execucao
	java -jar visual_headless.jar --headless $1 simula.log  --td:abort --regs --changed --cycles --mode:completion > /dev/null    

	#le o dado na tag certa do xml de log do simulador	
	while read_dom; do
		if [[ $ENTITY = "register name=\"R0\"" ]]; then
			printf "%d\n" $CONTENT
			exit
		fi
	done < simula.log
	
rm simula.log
