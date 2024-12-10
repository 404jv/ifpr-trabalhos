programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 3\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matriz[5][5], totalPar = 0

		mensagem()

		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				matriz[i][j] = sorteia(1, 100)
				escreva(matriz[i][j], "\t")
				se (matriz[i][j] % 2 == 0) {
					totalPar += 1
				}
			}
			escreva("\n")
		}

		escreva("\nA quantidade de números pares é: ", totalPar)
	}
}
