programa {
	funcao inicio() {
		inteiro vetor[15]
	
		escreva("Vetor: \n")
		para (inteiro i = 0; i < 15; i++) {
			vetor[i] = sorteia(1, 100)
			escreva(vetor[i], " - ")
		}
		escreva("\n")
	
		para (inteiro i = 1; i < 15; i++) {
			inteiro chave = vetor[i]
			inteiro j = i - 1
	
			enquanto (j >= 0 e vetor[j] > chave) {
				vetor[j + 1] = vetor[j]
				j = j - 1
			}
			vetor[j + 1] = chave
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
 * @POSICAO-CURSOR = 49; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */