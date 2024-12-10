programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 2\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matriz[4][4], soma = 0

		mensagem()

		para (inteiro i = 0; i < 4; i++) {
			para (inteiro j = 0; j < 4; j++) {
				matriz[i][j] = sorteia(1, 100)
				escreva(matriz[i][j], "\t")
			}
			escreva("\n")
		}

		para (inteiro i = 0; i < 4; i++) {
			soma += matriz[i][i]
		}

		escreva("\nA soma da digonal principal da matriz é: ", soma)
	}
}
