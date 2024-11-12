programa {
	funcao inicio() {
		inteiro matriz[4][4], soma = 0

		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matriz[i][j] = sorteia(1, 100)
				escreva(matriz[i][j], "\t")
			}
			escreva("\n")
		}

		para (inteiro i = 0; i < 4; i++) {
			soma += matriz[i][i]
		}

		escreva("\nA soma da digonal principal da matriz é: ", soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 28; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */