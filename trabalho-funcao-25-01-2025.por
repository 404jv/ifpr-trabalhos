programa {
	cadeia nome, rua, bairro, estado, cidade, nomeProduto, dataVenda
	real valorProduto
	inteiro qtVendaProduto

	funcao setNomeRuaBairro() {
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
		
		escreva("Digite o nome do cliente: ")
		leia(nome)

		escreva("Digite a rua: ")
		leia(rua)

		escreva("Digite o bairro: ")
		leia(bairro)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
	}

	funcao setCidadeEstado() {
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
		
		escreva("Digite a cidade: ")
		leia(cidade)

		escreva("Digite o estado: ")
		leia(estado)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
	}


	funcao setProdutoEPreco() {
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
		
		escreva("Digite o nome do produto: ")
		leia(nomeProduto)

		escreva("Digite o preço em reais: ")
		leia(valorProduto)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
	}

	funcao setVenda() {
		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
		
		escreva("Digite a data da venda (DD/MM/AAAA): ")
		leia(dataVenda)

		escreva("Digite a quantidade do produto: ")
		leia(qtVendaProduto)

		escreva("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n")
	}
	
	funcao inicio() {
		setNomeRuaBairro()
		setCidadeEstado()
		setProdutoEPreco()
		setVenda()

		escreva("Data da venda: ", dataVenda, "\n Nome = ", nome, " Endereço: ", rua, " Bairro: ", bairro, " Cidade: ", cidade, " Estado: ", estado, "\n")
		escreva("Produto: ", nomeProduto, " Preço Unitário: ", valorProduto, " Quantidade: ", qtVendaProduto, " Valor Total: ", qtVendaProduto * valorProduto)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */