programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 6\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matrizA[6][6], media = 0

    mensagem()

		escreva("Matriz: \n")
		para (inteiro i = 0; i < 6; i++) {
			para (inteiro j = 0; j < 6; j++) {
				matrizA[i][j] = sorteia(1, 100)
				escreva(matrizA[i][j], "\t")
				media += matrizA[i][j]
			}
			escreva("\n")
		}
		escreva("\n\n")

		media = media / 36
		escreva("A média é: ", media, "\n")
		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				se (matrizA[i][j] > media) {
					escreva("O número ", matrizA[i][j], " está acima da média\n")
				} senao se (matrizA[i][j] < media) {
					escreva("O número ", matrizA[i][j], " está abaixo da média\n")
				} senao {
					escreva("O número ", matrizA[i][j], " é igual a média\n")
				}			
			}
		}
	}
}
