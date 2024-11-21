programa {
	funcao inicio() {
		inteiro vetor[20], maiorIndex = 0, temp = 0
	
		escreva("Vetor: \n")
		para (inteiro i = 0; i < 20; i++) {
			vetor[i] = sorteia(1, 100)
			escreva(vetor[i], " - ")
		}
		escreva("\n")

		para (inteiro i = 0; i < 20; i++) {
			maiorIndex = i
			
			para (inteiro j = i; j < 20; j++) {
				se (vetor[maiorIndex] < vetor[j]) {
					maiorIndex = j
				}
			}

			temp = vetor[maiorIndex]
			vetor[maiorIndex] = vetor[i]
			vetor[i] = temp
		}

		escreva("Vetor em ordem decrescente: \n")
		para (inteiro i = 0; i < 20; i++) {
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
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */