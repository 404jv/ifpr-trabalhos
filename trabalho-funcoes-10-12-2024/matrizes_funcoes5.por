programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 5\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[4][4], matrizMultiplicada[4][4], numero

    mensagem()

		escreva("Digite um número para multiplicação: ")
		leia(numero)

		escreva("Matriz: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("\nA multiplicação da matrize por, ", numero, " é: \n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matrizMultiplicada[i][j] = matrizA[i][j] * numero
				escreva(matrizMultiplicada[i][j], "\t")
			}
			escreva("\n")
		}
	}
}
