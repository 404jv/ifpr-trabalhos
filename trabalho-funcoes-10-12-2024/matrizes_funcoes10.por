programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 10\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[2][2], matrizB[2][2], matrizMultiplicada[2][2]

    mensagem()

		escreva("Matriz A: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("Matriz B: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizB[i][j] = sorteia(1, 100)
				escreva(matrizB[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")


		escreva("Matriz A x B: \n")
		para (inteiro i = 0; i < 2; i++) {
			para (inteiro j = 0; j < 2; j++) {
				matrizMultiplicada[i][j] = matrizA[i][j] * matrizB[i][j]
				escreva(matrizMultiplicada[i][j], "\t")
			}
			escreva("\n")
		}
	}
}
