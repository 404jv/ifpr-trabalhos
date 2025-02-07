programa
 {
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tipos

	funcao inteiro somarVetor(inteiro vetor[], inteiro index, inteiro soma) {
		se (u.numero_elementos(vetor) == index) {
			retorne soma
		}
		inteiro primeiroValor = vetor[index]
		retorne somarVetor(vetor, index + 1, soma + primeiroValor)
	}

	funcao logico ePalindromo(cadeia palavra) {
		inteiro totalLetras = t.numero_caracteres(palavra)
		se (totalLetras <= 1) {
			retorne verdadeiro
		}
		caracter letraInicial = t.obter_caracter(palavra, 0)
		caracter letraFinal = t.obter_caracter(palavra, totalLetras - 1)
		se (letraInicial != letraFinal) {
			retorne falso	
		}
		cadeia novaPalavra = t.extrair_subtexto(palavra, 1, totalLetras-1)
		retorne ePalindromo(novaPalavra)
	}

	funcao inteiro totalOcorrencia(inteiro vetor[], inteiro numero, inteiro index, inteiro total) {
		se (u.numero_elementos(vetor) == index) {
			retorne total
		}
		se (vetor[index] == numero) {
			total += 1
		}
		retorne totalOcorrencia(vetor, numero, index+1, total)
	}

	funcao inteiro maiorNumeroNoVetor(inteiro vetor[], inteiro maior, inteiro index, logico ePrimeiroLoop) {
		se (ePrimeiroLoop) {
			maior = vetor[0]
		}
		se (u.numero_elementos(vetor) == index) {
			retorne maior
		}
		se (vetor[index] > maior) {
			maior = vetor[index]
		}
		retorne maiorNumeroNoVetor(vetor, maior, index+1, falso)
	}
	
	funcao inicio()
 {
		inteiro vetor[5]
		escreva("Digite 5 valores para o vetor: \n")
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++) {
			escreva("Digite o valor na posição ", i, ": ")
			leia(vetor[i])
		}
		inteiro resultado = somarVetor(vetor, 0, 0)
		escreva("A soma dos elementos no vetor é: ", resultado, "\n\n")
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", "\n\n")

		cadeia palavra
		escreva("Digite uma palavra para saber se é um Palíndromo: ")
		leia(palavra)
		logico resultado1 = ePalindromo(t.caixa_baixa(palavra))
		se (resultado1) {
			escreva("A palavra ", palavra, " é um palíndromo!", "\n\n")
		} senao {
			escreva("A palavra ", palavra, " não é um palíndromo!", "\n\n")
		}
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", "\n\n")

		inteiro vetor1[5], numOcorrencia
		escreva("Digite 5 valores para o vetor: \n")
		para (inteiro i = 0; i < u.numero_elementos(vetor1); i++) {
			escreva("Digite o valor na posição ", i, ": ")
			leia(vetor1[i])
		}
		escreva("Digite um número para contar as ocorrências: ")
		leia(numOcorrencia)
		inteiro total = totalOcorrencia(vetor1, numOcorrencia, 0, 0)
		escreva("\nO número ", numOcorrencia, " apareceu ", total, " vezes\n")

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", "\n\n")

		inteiro vetor2[5]
		escreva("Digite 5 valores para o vetor: \n")
		para (inteiro i = 0; i < u.numero_elementos(vetor2); i++) {
			escreva("Digite o valor na posição ", i, ": ")
			leia(vetor2[i])
		}
		inteiro maior = maiorNumeroNoVetor(vetor2, 0, 0, verdadeiro)
		escreva("\nO maior número no vetor é ", maior)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-", "\n\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3062; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
