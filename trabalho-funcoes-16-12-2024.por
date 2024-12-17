programa {
  inclua biblioteca Texto

  funcao inteiro maior(inteiro num1, inteiro num2) {
    se (num1 > num2) {
      retorne num1
    }
    retorne num2
  }

  funcao numerosParesDe0Ate100() {
    para (inteiro i = 1; i < 100; i++) {
      se (i % 2 == 0) {
        escreva(i, " ")
      }
    }
    escreva("\n\n")
  }

  funcao real calcularDesconto(real preco, real descontoEmPorcento) {
    real precoFinal = preco - (preco * (descontoEmPorcento / 100))
    retorne precoFinal
  }

  funcao bemVindo(cadeia nome) {
    escreva("Bem-vindo(a), ", nome, "\n\n")
  }

  funcao real celsiusParaFahrenheit(real celsius) {
    retorne (celsius * 1.8) + 32
  }

  funcao real mediaAritmetica(real num1, real num2, real num3) {
    retorne (num1 + num2 + num3) / 3
  }

  funcao real diferencaAbsoluta(real num1, real num2) {
    retorne num1 - num2
  }

  funcao desenhaRetangulo(inteiro altura, inteiro largura) {
    para (inteiro i = 0; i < altura; i++) {
      para (inteiro j = 0; j < largura; j++) {
        escreva("*")
      }
      escreva("\n")
    }
    escreva("\n")
  }

  funcao quantidadeCaracteres(cadeia frase) {
    escreva("Essa frase \"", frase, "\" tem: ", Texto.numero_caracteres(frase), " caracteres\n")
  }

  funcao inicio() {
    escreva("O maior número entre 1 e 2 é: ", maior(1, 2), "\n\n")
    numerosParesDe0Ate100()
    escreva("O valor de R$100,00 com um desconto de 10% é: ", calcularDesconto(100.0, 10.0), "\n\n")
    bemVindo("Cristiano")
    escreva("21°C é: ", celsiusParaFahrenheit(21.0), "°F\n\n")
    escreva("A média aritmética de 10, 10 e 10 é: ", mediaAritmetica(10.0, 10.0, 10.0), "\n\n")
    escreva("A diferença entre 3 e -2 é: ", diferencaAbsoluta(3.0, -2.0), "\n\n")
    escreva("Retângulo: \n")
    desenhaRetangulo(3, 15)
    quantidadeCaracteres("Hello World")
  }
}
