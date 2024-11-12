programa {
	funcao inicio() {
		inteiro matriz[3][3]

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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */