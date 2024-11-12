programa {
	funcao inicio() {
		inteiro matrizA[5][5], vetor[5]


		escreva("Matriz: \n")
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("O vetor com a diagonal secundária: \n")
		para (inteiro i = 4; i >= 0; i--) {
			vetor[i] = matrizA[i][i]
			escreva("Vetor na posição ", i+1, ": ", vetor[i], "\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 464; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */