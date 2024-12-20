programa {
  inclua biblioteca Util

	funcao vazio criaVetorComPares(inteiro n) {
		inteiro vetor[10]
		inteiro temp = 0
		escreva("Um vetor de tamanho ", n, " com apenas números pares: \n")
		para (inteiro i = 0; i < n; i++) {
		 vetor[i] = temp
		 temp += 2
		 escreva(vetor[i], " ")
		}
		escreva("\n\n")
	}
	
	funcao inteiro somaVetor(inteiro vetor[]) {
		inteiro soma = 0
		escreva("Vetor: ")
		para (inteiro i = 0; i < Util.numero_elementos(vetor); i++) {
		 escreva(vetor[i], " ")
		 soma += vetor[i]
		}
		retorne soma
	}
	
	funcao inteiro somaVetores(inteiro vetorA[], inteiro vetorB[]) {
		inteiro soma = 0
		escreva("Vetor A: ")
		para (inteiro i = 0; i < Util.numero_elementos(vetorA); i++) {
		 escreva(vetorA[i], " ")
		}
		escreva("\nVetor B: ")
		para (inteiro i = 0; i < Util.numero_elementos(vetorA); i++) {
		 escreva(vetorB[i], " ")
		 soma = vetorA[i] + vetorB[i]
		}
		retorne soma
	}
	
	funcao real maiorElementoVetor(real vetor[]) {
		real maior = vetor[0]
		escreva("Vetor: ")
		para (inteiro i = 1; i < Util.numero_elementos(vetor); i++) {
		 se (maior < vetor[i]) {
		   maior = vetor[i]
		 }
		 escreva(vetor[i], " ")
		}
		retorne maior
	}
	
	funcao real mediaVetor(inteiro vetor[]) {
		real media = 0.0
		escreva("Vetor: ")
		para (inteiro i = 1; i < Util.numero_elementos(vetor); i++) {
		 escreva(vetor[i], " ")
		 media += vetor[i]
		}
		media = media / Util.numero_elementos(vetor)
		retorne media
	}
	
	funcao vazio multiplicaVetor(inteiro vetor[], inteiro multiplicador) {
		real total = 0.0
		escreva("Vetor multiplicado: \n")
		para (inteiro i = 0; i < Util.numero_elementos(vetor); i++) {
		 escreva(vetor[i], " x ", multiplicador, " = ", multiplicador * vetor[i], "\n")
		}
	}
	
	funcao vazio matrizComZero(inteiro matriz[][], inteiro qtColunas, inteiro qtLinhas) {
		escreva("Matriz: \n")
		para (inteiro i = 0; i < qtColunas; i++) {
		 para (inteiro j = 0; j < qtLinhas; j++) {
		   matriz[i][j] = 0
		   escreva(matriz[i][j], " ")
		 }
		 escreva("\n")
		}
	}
	
	funcao somaLinhasMatriz(inteiro matriz[][], inteiro qtColunas, inteiro qtLinhas) {
		inteiro soma = 0
		escreva("\nSomas das linhas: \n")
		para (inteiro i = 0; i < qtColunas; i++) {
		 para (inteiro j = 0; j < qtLinhas; j++) {
		   soma +=  matriz[i][j]
		 }
		 escreva("A soma da linha ", i, ": ", soma, "\n")
		 soma = 0 
		}
	}

	funcao matrizTransposta(inteiro matriz[][], inteiro qtColunas, inteiro qtLinhas) {
		inteiro matrizAt[5][5]

		escreva("Matriz Transposta:\n")
		para (inteiro i = 0; i < qtColunas; i++) {
			para (inteiro j = 0; j < qtLinhas; j++) {
				matrizAt[j][i] = matriz[i][j]
			}
		}
		para (inteiro i = 0; i < qtColunas; i++) {
			para (inteiro j = 0; j < qtLinhas; j++) {
				escreva(matrizAt[i][j], " ")
			}
			escreva("\n")
		}
	}

	funcao diagonalPrincipal(inteiro matriz[][], inteiro qtColunas, inteiro qtLinhas) {
		inteiro diagonalPrincipalValores[5]

		escreva("Valores da diagonal principal: ")
		para (inteiro i = 0; i < qtColunas; i++) {
			diagonalPrincipalValores[i] = matriz[i][i]
			escreva(diagonalPrincipalValores[i], " ")
		}
	}

	funcao matrizComValoresAleatorios(inteiro matriz[][], inteiro qtColunas, inteiro qtLinhas) {
		escreva("Valores aleatorios: ")
		para (inteiro i = 0; i < qtColunas; i++) {
			para (inteiro j = 0; j < qtLinhas; j++) {
				matriz[i][j] = Util.sorteia(1, 50)
		 		escreva(matriz[i][j], " ")
	 		}
			escreva("\n")
		}
	}

	funcao ordenarVetor(inteiro vetor[]) {
		logico trocado
		inteiro temp
		inteiro tamanhoVetor = Util.numero_elementos(vetor) - 1
		para (inteiro i = 0; i < tamanhoVetor; i++) {
			trocado = falso
			para (inteiro j = 0; j < tamanhoVetor - i; j++) {
				se (vetor[j] > vetor[j + 1]) {
					trocado = verdadeiro
					temp = vetor[j]
					vetor[j] = vetor[j + 1]
					vetor[j + 1] = temp
				}
			}

			se (trocado == falso) {
				pare
			}
		}
		escreva("Vetor ordenado: \n")
		para (inteiro i = 0; i < Util.numero_elementos(vetor); i++) {
			escreva(vetor[i], " ")
		}
		escreva("\n")
	}

	funcao insercaoVetores(inteiro vetorA[], inteiro vetorB[]) {
		inteiro insercao[5], index = 0

		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				se (vetorA[i] == vetorB[j]) {
					insercao[index] = vetorA[i]
					index += 1
					pare
				}
			}
		}

		escreva("Inserção entre os vetores: \n")
		para (inteiro i = 0; i < 5; i++) {
			escreva(insercao[i], " ")
		}
		escreva("\n\n")
	}
	
  	funcao inicio() {
		inteiro vetor[10], somaTotal = 0, vetorB[10], multiplicador, matriz[5][5], matrizA[5][5], totalSomaLinhasMatriz[5]
		real vetorReal[5] = { 1.2, 10.2, 0.1, 20.3, 50.2 }, maior, media
		inteiro vetorAEx14[5] = {1, 2, 3, 4, 5}, vetorBEx14[5] = {2, 1, 100, 23, 1}

		
		criaVetorComPares(10)
		
		para (inteiro i = 0; i < 10; i++) {
	 		vetor[i] = Util.sorteia(0, 100)
		}
		somaTotal = somaVetor(vetor)
		escreva("\nSoma do vetor: ", somaTotal, "\n\n")
		
		para (inteiro i = 0; i < 10; i++) {
 			vetorB[i] = Util.sorteia(0, 100)
		}
		somaTotal = somaVetores(vetor, vetorB)
		escreva("\nSoma dos vetores: ", somaTotal, "\n\n")
		
		
		maior = maiorElementoVetor(vetorReal)
		escreva("\nO maior número desse vetor é: ", maior, "\n\n")
		
		media = mediaVetor(vetor)
		escreva("\nA média do vetor é: ", media, "\n\n")
		
		escreva("Digite um número número: ")
		leia(multiplicador)
		multiplicaVetor(vetor, multiplicador)
		escreva("\n\n")
		
		matrizComZero(matriz, 5, 5)
		escreva("\n\n")
		
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				matriz[i][j] = Util.sorteia(0, 100)
		 		escreva(matriz[i][j], " ")
	 		}
			escreva("\n")
		}
	
		somaLinhasMatriz(matriz, 5, 5)
		escreva("\n\n")

		matrizTransposta(matriz, 5, 5)
		escreva("\n")
		
		diagonalPrincipal(matriz, 5, 5)
		escreva("\n\n")

		matrizComValoresAleatorios(matrizA, 5, 5)
		escreva("\n\n")


		escreva("Vetor: \n")
		para (inteiro i = 0; i < 10; i++) {
	 		escreva(vetor[i], " ")
		}
		escreva("\n")
		ordenarVetor(vetor)
		escreva("\n\n")

		escreva("Vetor A: \n")
		para (inteiro i = 0; i < 5; i++) {
	 		escreva(vetorAEx14[i], " ")
		}
		escreva("\nVetor B: \n")
		para (inteiro i = 0; i < 5; i++) {
	 		escreva(vetorBEx14[i], " ")
		}
		escreva("\n")
		insercaoVetores(vetorAEx14, vetorBEx14)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6222; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */