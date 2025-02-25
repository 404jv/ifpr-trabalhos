programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp
	inclua biblioteca Matematica --> m
	
	inteiro pilha[10], indexAtual = 0

	funcao empilhar() {
		inteiro valor
		se (u.numero_elementos(pilha) == indexAtual) {
			escreva("A pilha está cheia, é necessário remover para adicionar mais elementos.\n")
			retorne
		}
		escreva("Digite o valor: ")
		leia(valor)
		pilha[indexAtual] = valor
		escreva("O valor ", valor, " foi empilhado com sucesso no index: ", indexAtual+1, "\n")
		indexAtual += 1
	}

	funcao desempilhar() {
		se (indexAtual == 0) {
			escreva("A pilha está vazia, não tem itens para desempilhar.\n")
			retorne
		}
		indexAtual -= 1
		escreva("O valor foi desempilhado com sucesso!\n")
	}

	funcao bubleSort(inteiro vetor[]) {
		inteiro temp
		logico trocado

		para (inteiro i = 0; i < 10; i++) {
			trocado = falso
	
			para (inteiro j = 0; j < 9 - i; j++) {
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
		para (inteiro i = 0; i < 10; i++) {
			escreva(vetor[i], " - ")
		}
		escreva("\n")
	}
	
	funcao inicio()
	{
		inteiro lista[10]

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 1 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		

		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da posição ", i+1, ": ")
			leia(lista[i])
		}

		para (inteiro i = 0; i < 10; i++) {
			escreva("O número da posição ", i+1, ": ", lista[i], "\n")
		}

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 2 -=-=-=-=-=-=-=-=-=-=-=-=\n")

		logico achouValor = falso
		inteiro valorBusca

		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da pos2ição ", i+1, ": ")
			leia(lista[i])
		}

		escreva("Qual valor você quer buscar?: ")
		leia(valorBusca)

		para (inteiro i = 0; i < 10; i++) {
			se (lista[i] == valorBusca) {
				escreva("Encontrei o número ", valorBusca, " na posição: ", i+1, "\n")
				achouValor = verdadeiro
			}
		}
		se (achouValor == falso) {
			escreva("Não encontrei o valor em nenhuma das 10 posições =(\n")
		}

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 3 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		
		inteiro opcao
		enquanto (verdadeiro) {
			escreva("---------------------------\n")
			escreva("Digite uma das opções:\n [1] Empilhar valor\n [2] Desempilhar Valor\n [3] Encerrar\n Digite o número: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					empilhar()
					pare
				caso 2:
					desempilhar()
					pare
				caso 3:
					pare
				caso contrario:
					escreva("O valor digitado não é aceito!\n")
			}

			se (opcao == 3) {
				pare
			}
		}

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 4 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		inteiro soma = 0

		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da posição ", i+1, ": ")
			leia(lista[i])
			soma += lista[i]
		}
		escreva("A soma do vetor é: ", soma, "\n")

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 5 -=-=-=-=-=-=-=-=-=-=-=-=\n")

		inteiro novaLista[10]
		
		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da posição ", i+1, ": ")
			leia(lista[i])
		}

		escreva("Lista invertida: \n")
		para (inteiro i = 9; i >= 0; i--) {
			novaLista[i] = lista[9 - i]
		}

		para (inteiro i = 0; i < 10; i++) {
			escreva(novaLista[i], " ")
		}
		escreva("\n")

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 7 -=-=-=-=-=-=-=-=-=-=-=-=\n")

		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da posição ", i+1, ": ")
			leia(lista[i])
		}
		bubleSort(lista)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 8 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		
		para (inteiro i = 0; i < 10; i++) {
			lista[i] = u.sorteia(0, 100)
			escreva(lista[i], " - ")
		}
		escreva("\n")

		escreva("Qual valor você quer remover?: ")
		leia(valorBusca)

		para (inteiro i = 0; i < 10; i++) {
			se (lista[i] == valorBusca) {
				escreva("Encontrei o número ", valorBusca, " na posição: ", i+1, " e ele foi substituído por zero!\n")
				lista[i] = 0
				achouValor = verdadeiro
			}
		}
		se (achouValor == falso) {
			escreva("Não encontrei o valor em nenhuma das 10 posições =(\n")
		}
		
		escreva("Resultado final: ")
		para (inteiro i = 0; i < 10; i++) {
			escreva(lista[i], " ")
		}
		escreva("\n")

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 9 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		inteiro total = 0

		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número da posição ", i+1, ": ")
			leia(lista[i])
		}
		escreva("Qual número deseja contar no vetor?: ")
		leia(valorBusca)
		
		para (inteiro i = 0; i < 10; i++) {
			se (lista[i] == valorBusca) {
				total += 1
			}
		}
		escreva("O número", valorBusca, " apareceu ", total, " vezes no vetor!\n")

				cadeia numeroBinarioStr

		escreva("-=-=-=-=-=-=-=-=-=-=-=-= EXERCÍCIO 10 -=-=-=-=-=-=-=-=-=-=-=-=\n")
		
		escreva("Digite o número em binário para conversão: ")
		leia(numeroBinarioStr)
		real decimal = 0.0
		inteiro totalNumeros = t.numero_caracteres(numeroBinarioStr)
		real expoente = 0.0

		para (inteiro i = totalNumeros - 1; i >= 0; i--) {
			inteiro numeroBinarioInt = tp.caracter_para_inteiro(t.obter_caracter(numeroBinarioStr, i))
			se (numeroBinarioInt == 1) {
				decimal += m.potencia(2.0, expoente)
			}
			expoente += 1
		}
		escreva("O valor de ", numeroBinarioStr, " em decimal é: ", decimal, "\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5413; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */