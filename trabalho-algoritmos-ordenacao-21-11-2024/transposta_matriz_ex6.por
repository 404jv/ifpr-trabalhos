programa {
	funcao inicio() {
		inteiro matrizA[3][3], matrizAt[3][3]
	
		escreva("Matriz: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n")

		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				matrizAt[j][i] = matrizA[i][j]
			}
		}


		escreva("Matriz transposta: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva(matrizAt[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */