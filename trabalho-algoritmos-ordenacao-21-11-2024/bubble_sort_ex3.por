programa {
	funcao inicio() {
		real vetor[15], temp
		logico trocado
	
		escreva("Vetor: \n")
		para (inteiro i = 0; i < 15; i++) {
			vetor[i] = sorteia(1, 100)
			escreva(vetor[i], " - ")
		}
		escreva("\n")

		para (inteiro i = 0; i < 15; i++) {
			trocado = falso

			para (inteiro j = 0; j < 14 - i; j++) {
				se (vetor[j] > vetor[j + 1]) {
					trocado = verdadeiro
					temp = vetor[j]
					vetor[j] = vetor[j + 1]
					vetor[j + 1] = temp
				}
			}

			se (trocado == falso) {
				pare
			}
		}


		escreva("Vetor ordenado: \n")
		para (inteiro i = 0; i < 15; i++) {
			escreva(vetor[i], " - ")
		}
		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */