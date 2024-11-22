programa {
	funcao inicio() {
		inteiro vetorA[10], vetorB[10]
		logico eIgual = verdadeiro

		escreva("Vetor A: \n")
		para (inteiro i = 0; i < 10; i++) {
			vetorA[i] = sorteia(1, 2)
			vetorB[i] = sorteia(1, 2)
			escreva(vetorA[i], " - ")
		}
		escreva("\n\n")

		escreva("Vetor B: \n")
		para (inteiro i = 0; i < 10; i++) {
			escreva(vetorB[i], " - ")
		}

		para (inteiro i = 0; i < 10; i++) {
			se (vetorA[i] != vetorB[i]) {
				eIgual = falso
			}
		}


		se (eIgual == falso) {
			escreva("\n\nOs vetores são diferentes")
		} senao {
			escreva("\n\nOs vetores são iguais")	
		}

		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 612; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */