programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 8\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[4][4], maiores[4], menores[4], maior, menor

    mensagem()

		escreva("Matriz: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("A matriz trocada ímpar por par: \n")
		para (inteiro i = 0; i < 4; i++) {
			maior = matrizA[i][0]
			menor = matrizA[i][0]
			para (inteiro j = 0; j < 4; j++) {
				se (maior < matrizA[i][j]) {
					maior = matrizA[i][j]
				} senao se (menor > matrizA[i][j]) {
					menor = matrizA[i][j]
				}
			}
			maiores[i] = maior
			menores[i] = menor
			escreva("O menor valor da linha ", i+1, " é: ", menor, "\n")
			escreva("O maior valor da linha ", i+1, " é: ", maior, "\n")
			escreva("\n")
		}
	}
}
