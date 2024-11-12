programa {
	funcao inicio() {
		inteiro matrizA[2][2], matrizB[2][2], matrizMultiplicada[2][2]


		escreva("Matriz A: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("Matriz B: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizB[i][j] = sorteia(1, 100)
				escreva(matrizB[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")


		escreva("Matriz A x B: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizMultiplicada[i][j] = matrizA[i][j] * matrizB[i][j]
				escreva(matrizMultiplicada[i][j], "\t")
			}
			escreva("\n")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 770; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */