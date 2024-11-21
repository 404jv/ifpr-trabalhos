programa {
	funcao inicio() {
		inteiro matriz[4][4], temp
		logico trocado
	
		escreva("Matriz: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matriz[i][j] = sorteia(1, 100)
				escreva(matriz[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n")

		para (inteiro z = 0; z < 4; z++) {
			para (inteiro i = 0; i < 4; i++) {
				trocado = falso
				para (inteiro j = 0; j < 3 - i; j++) {
					se (matriz[z][j] > matriz[z][j + 1]) {
						trocado = verdadeiro
						temp = matriz[z][j]
						matriz[z][j] = matriz[z][j + 1]
						matriz[z][j + 1] = temp
					}
				}
	
				se (trocado == falso) {
					pare
				}
			}
		}


		escreva("Matriz com linhas ordenadas: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				escreva(matriz[i][j], "\t")
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
 * @POSICAO-CURSOR = 816; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */