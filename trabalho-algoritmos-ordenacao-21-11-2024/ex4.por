programa {
	funcao inicio() {
		inteiro vetor[10], maiorIndex, temp
	
		escreva("Vetor: \n")
		para (inteiro i = 0; i < 10; i++) {
			vetor[i] = sorteia(1, 100)
			escreva(vetor[i], " - ")
		}
		escreva("\n\n")
	
		para (inteiro i = 1; i < 10; i++) {
			inteiro chave = vetor[i]
			inteiro j = i - 1
	
			enquanto (j >= 0 e vetor[j] > chave) {
				vetor[j + 1] = vetor[j]
				j = j - 1
			}
			vetor[j + 1] = chave
		}

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Vetor ordenado crescente: \n")
		para (inteiro i = 0; i < 10; i++) {
			escreva(vetor[i], " - ")
		}
		escreva("\n\n")

		para (inteiro i = 0; i < 10; i++) {
			maiorIndex = i
			
			para (inteiro j = i; j < 10; j++) {
				se (vetor[maiorIndex] < vetor[j]) {
					maiorIndex = j
				}
			}

			temp = vetor[maiorIndex]
			vetor[maiorIndex] = vetor[i]
			vetor[i] = temp
		}

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Vetor em ordem decrescente: \n")
		para (inteiro i = 0; i < 10; i++) {
			escreva(vetor[i], " - ")
		}
		escreva("\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 819; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */