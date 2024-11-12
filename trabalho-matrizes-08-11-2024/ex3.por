programa {
	funcao inicio() {
		inteiro matriz[5][5], totalPar = 0

		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				matriz[i][j] = sorteia(1, 100)
				escreva(matriz[i][j], "\t")
				se (matriz[i][j] % 2 == 0) {
					totalPar += 1
				}
			}
			escreva("\n")
		}

		escreva("\nA quantidade de números pares é: ", totalPar)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */