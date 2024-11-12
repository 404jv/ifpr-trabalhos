programa {
	funcao inicio() {
		inteiro matrizA[4][4], maiores[4], menores[4], maior, menor


		escreva("Matriz: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("A matriz trocada ímpar por par: \n")
		para (inteiro i = 0; i < 4; i++) {
			maior = matrizA[i][0]
			menor = matrizA[i][0]
			para (inteiro j = 0; j < 4; j++) {
				se (maior < matrizA[i][j]) {
					maior = matrizA[i][j]
				} senao se (menor > matrizA[i][j]) {
					menor = matrizA[i][j]
				}
			}
			maiores[i] = maior
			menores[i] = menor
			escreva("O menor valor da linha ", i+1, " é: ", menor, "\n")
			escreva("O maior valor da linha ", i+1, " é: ", maior, "\n")
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */