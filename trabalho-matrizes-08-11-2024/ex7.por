programa {
	funcao inicio() {
		inteiro matrizA[6][6]


		escreva("Matriz: \n")
		para (inteiro i = 0; i < 6; i++) {
			para (inteiro j = 0; j < 6; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("A matriz trocada ímpar por par: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matrizA[i][j] += 1
				escreva(matrizA[i][j], "\t")
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
 * @POSICAO-CURSOR = 353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */