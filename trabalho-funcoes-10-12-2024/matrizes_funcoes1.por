programa
 {
  funcao mensagem() {
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("\t\t\t\t\t\t\t\tEXERCÍCIO 1\n")
    escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

	funcao inicio() {
		inteiro matriz[3][3]

    mensagem()

		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva("Digite o valor da posição ", i+1, "x", j+1, ": ")
				leia(matriz[i][j])
			}
		}

		
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j = 0; j < 3; j++) {
				escreva(matriz[i][j], "\t")
			}
			escreva("\n")
		}
	}
}
