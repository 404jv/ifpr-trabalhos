programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp
	
	cadeia filaPrioritaria[100], filaEmergencial[100], filaNormal[100]
	inteiro indexPrioritaria = 0, indexEmergencial = 0, indexNormal = 0
	
	// Atender é diferente de listar, atende por ordem de chegada, lista por ordem de idade

	funcao adicionarPaciente() {
		escreva("-=-=-=-=-=-=--=-=- CADASTRO DE PACIENTE -=-=-=-=-=-=--=-=-\n")
		cadeia nome
		inteiro idade
		inteiro opcao

		escreva("Nome do paciente: ")
		leia(nome)

		escreva("Idade: ")
		leia(idade)

		se (idade >= 65) {
			filaPrioritaria[indexPrioritaria] = formatarNomeEIdade(nome, idade)
			escreva(filaPrioritaria[indexPrioritaria], "\n")
			escreva("✅ Paciente adicionado com sucesso na fila PRIORITÁRIA.\n")
			indexPrioritaria++
			retorne
		}
		escreva("Qual tipo de atendimento \n1. Normal \n2. Emergencial \nOpção: ")
		leia(opcao)

		se (opcao == 1) {
			filaNormal[indexNormal] = formatarNomeEIdade(nome, idade)
			escreva("✅ Paciente adicionado com sucesso na fila NORMAL.\n")
			indexNormal++
			retorne
		}
		se (opcao == 2) {
			filaEmergencial[indexEmergencial] = formatarNomeEIdade(nome, idade)
			escreva("✅ Paciente adicionado com sucesso na fila EMERGENCIAL.\n")
			indexEmergencial++
			retorne
		}
		escreva("❌ Opção inválida! Tente novamente.\n")
		escreva("-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-\n")
	}

	funcao cadeia formatarNomeEIdade(cadeia nome, inteiro idade) {
		retorne nome + " (" + idade + ")"
	}

	funcao removerPaciente() {
		escreva("-=-=-=-=-=-=--=-=- REMOVER PACIENTE -=-=-=-=-=-=--=-=-\n")
		inteiro opcao
		escreva("Qual fila deseja remover o paciente? \n1. Normal \n2. Emergencial \n3. Prioritária \nOpção: ")
		leia(opcao)

		se (opcao == 1 e indexNormal > 0) {
			filaNormal[indexNormal] = ""
			indexNormal--
			escreva("✅ Paciente removido com sucesso na fila NORMAL.\n")
			retorne
		}

		se (opcao == 2 e indexEmergencial > 0) {
			filaEmergencial[indexEmergencial] = ""
			indexEmergencial--
			escreva("✅ Paciente removido com sucesso na fila EMERGENCIAL.\n")
			retorne
		}

		se (opcao == 3 e indexPrioritaria > 0) {
			filaPrioritaria[indexPrioritaria] = ""
			indexPrioritaria--
			escreva("✅ Paciente removido com sucesso na fila PRIORITÁRIA.\n")
			retorne
		}

		escreva("❌ Opção inválida! Tente novamente.\n")
		escreva("-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-\n")
	}

	funcao listarPacientes() {
		escreva("-=-=-=-=-=-=--=-=- PACIENTES NAS FILAS -=-=-=-=-=-=--=-=-\n")
		escreva("-- Fila prioritária --\n")
		para (inteiro i = 0; i < indexPrioritaria; i++) {
			escreva(i+1, ". ", filaPrioritaria[i], "\n")
		}
		escreva("\n-- Fim da fila prioritária --\n")

		escreva("\n-- Fila Emergencial --\n")
		para (inteiro i = 0; i <= indexEmergencial; i++) {
			escreva(i+1, ". ", filaEmergencial[i], "\n")
		}
		escreva("\n-- Fim da fila emergencial --\n")

		escreva("\n-- Fila Normal --\n")
		para (inteiro i = 0; i <= indexNormal; i++) {
			escreva(i+1, ". ", filaNormal[i], "\n")
		}
		escreva("\n-- Fim da fila normal --\n")
	}

	funcao inteiro maiorIndex() {
		inteiro maior = indexNormal
		se (maior < indexEmergencial) {
			maior = indexEmergencial
		}
		se (maior < indexPrioritaria) {
			maior = indexPrioritaria
		}
		retorne maior
	}


	funcao listarPacientesPorIdade() {
	   escreva("-=-=-=-=-=-=--=-=- LISTA POR IDADE -=-=-=-=-=-=--=-=-\n")
        logico trocado
        cadeia temp
        cadeia todasFilas[100]
        inteiro indexTodasFilas = 0

        para (inteiro i = 0; i < indexNormal; i++) {
        	todasFilas[i] = filaNormal[i]
        	indexTodasFilas++
        }
        para (inteiro i = 0; i < indexPrioritaria; i++) {
        	todasFilas[indexTodasFilas+i] = filaPrioritaria[i]
        	indexTodasFilas++
        }
        para (inteiro i = 0; i < indexEmergencial; i++) {
        	todasFilas[indexTodasFilas+i] = filaEmergencial[i]
        	indexTodasFilas++
        }

        para (inteiro i = 0; i < indexTodasFilas-1; i++) {
        	  trocado = falso

            para (inteiro j = 0; j < indexTodasFilas-1 - i; j++) {
            	cadeia nomeEIdade1 = todasFilas[j]
            	cadeia nomeEIdade2 = todasFilas[j + 1]

            	inteiro idade1 = pegarIdadePeloNome(nomeEIdade1)
            	inteiro idade2 = pegarIdadePeloNome(nomeEIdade2)
            	
               se (idade1 < idade2) {
              		trocado = verdadeiro
                    temp = todasFilas[j]
                    todasFilas[j] = todasFilas[j + 1]
                    todasFilas[j + 1] = temp
               }
            }

            se (trocado == falso) {
                pare
            }
        }
	   para (inteiro i = 0; i < indexTodasFilas; i++) {
			escreva(i+1, ". ", todasFilas[i], "\n")
	   }
    }

    funcao inteiro pegarIdadePeloNome(cadeia nomeEIdade) {
       	inteiro primeiroColchete = t.posicao_texto("(", nomeEIdade, 0)
       	inteiro segundoColchete = t.posicao_texto(")", nomeEIdade, 0)

       	inteiro idade = tp.cadeia_para_inteiro(t.extrair_subtexto(nomeEIdade, primeiroColchete+1, segundoColchete), 10)
       	retorne idade
    }
	
	funcao listarOrdemIdade() {
		escreva("-=-=-=-=-=-=--=-=- PACIENTES NAS FILAS -=-=-=-=-=-=--=-=-\n")
		escreva("-- Fila prioritária --\n")

	
		escreva("\n-- Fim da fila --\n")
	}

	funcao inicio()
	{
		inteiro opcao = 0
		logico loop = verdadeiro
		enquanto (loop) {
			escreva("-=-=-=-=-=-=--=-=- SISTEMA DE CONTROLE DE FILAS -=-=-=-=-=-=--=-=-\n")
			escreva("1. Adicionar paciente na fila \n2. Remover paciente da fila \n3. Listar pacientes (ordem de idade) \n4. Atendimento por chegada \n5. Sair do programa\n")
			escreva("Opção: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					adicionarPaciente()
					pare
				caso 2:
					removerPaciente()
					pare
				caso 3:
					listarPacientesPorIdade()
					pare
				caso 4:
					listarPacientes()
					pare
				caso 5:
					loop = falso
					pare
				caso contrario:
					escreva("❌ Opção inválida! Tente novamente.\n")
					pare
			}

			escreva("-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-=-=-=-=-=-=--=-=--=-=-=-=-=-=--=-=-\n")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */