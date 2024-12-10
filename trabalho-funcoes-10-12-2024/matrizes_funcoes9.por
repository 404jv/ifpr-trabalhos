programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 9\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[5][5], vetor[5]

    mensagem()

		escreva("Matriz: \n")
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("O vetor com a diagonal secundária: \n")
		para (inteiro i = 4; i >= 0; i--) {
			vetor[i] = matrizA[i][i]
			escreva("Vetor na posição ", i+1, ": ", vetor[i], "\n")
		}
	}
}
