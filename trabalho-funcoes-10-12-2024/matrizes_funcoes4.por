programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 4\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[3][3], matrizB[3][3], matrizSoma[3][3]

    mensagem()

		escreva("Matriz A: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("\n\n")

		escreva("Matriz B: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				matrizB[i][j] = sorteia(1, 100)
				escreva(matrizB[i][j], "\t")
			}
			escreva("\n")
		}

		escreva("\nA soma das matrizes: \n")
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				matrizSoma[i][j] = matrizA[i][j] + matrizB[i][j]
				escreva(matrizSoma[i][j], "\t")
			}
			escreva("\n")
		}
	}
}
