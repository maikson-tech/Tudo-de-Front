Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/2024
var
    operacao: inteiro
    num1, num2, resultado: real

inicio
    escreval("Calculadora Simples")
    escreval("Escolha a opera��o:")
    escreval("1. Adi��o")
    escreval("2. Subtra��o")
    escreval("3. Multiplica��o")
    escreval("4. Divis�o")
    leia(operacao)

    escreval("Digite o primeiro n�mero: ")
    leia(num1)
    escreval("Digite o segundo n�mero: ")
    leia(num2)

    escolha operacao
        caso 1
            resultado <- num1 + num2
            escreva("Resultado da adi��o: ", resultado)
        caso 2
            resultado <- num1 - num2
            escreva("Resultado da subtra��o: ", resultado)
        caso 3
            resultado <- num1 * num2
            escreva("Resultado da multiplica��o: ", resultado)
        caso 4
            se num2 <> 0 entao
                resultado <- num1 / num2
                escreval("Resultado da divis�o: ", resultado)
            senao
                escreval("Erro: divis�o por zero.")
            fimse
        caso contrario
            escreval("Op��o inv�lida.")
    fimEscolha
fimalgoritmo