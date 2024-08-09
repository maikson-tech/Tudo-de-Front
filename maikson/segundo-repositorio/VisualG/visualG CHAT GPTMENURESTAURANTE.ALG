Algoritmo "MenuRestaurante"
// Simula um menu interativo de restaurante
Var
    opcaoMenu, opcaoPrato, opcaoBebida, opcaoSobremesa: inteiro
    pratoEscolhido, bebidaEscolhida, sobremesaEscolhida: caractere

Inicio
    // Inicializando variáveis
    pratoEscolhido <- "Nenhum"
    bebidaEscolhida <- "Nenhuma"
    sobremesaEscolhida <- "Nenhuma"

    // Loop do menu principal
    repita
        // Exibindo o menu principal
        EscrevaL("Menu Principal:")
        EscrevaL("1 - Pratos")
        EscrevaL("2 - Bebidas")
        EscrevaL("3 - Sobremesas")
        EscrevaL("4 - Sair")
        Escreva("Escolha uma opção: ")
        Leia(opcaoMenu)

        // Processando a escolha do menu principal
        escolha opcaoMenu
            caso 1
                // Submenu de Pratos
                EscrevaL("Menu de Pratos:")
                EscrevaL("1 - Frango Grelhado")
                EscrevaL("2 - Peixe ao Molho")
                Escreva("Escolha um prato: ")
                Leia(opcaoPrato)

                // Processando a escolha de Prato
                escolha opcaoPrato
                    caso 1
                        pratoEscolhido <- "Frango Grelhado"
                    caso 2
                        pratoEscolhido <- "Peixe ao Molho"
                    outrocaso
                        EscrevaL("Opção inválida! Tente novamente.")
                fimescolha
            caso 2
                // Submenu de Bebidas
                EscrevaL("Menu de Bebidas:")
                EscrevaL("1 - Suco de Laranja")
                EscrevaL("2 - Refrigerante")
                Escreva("Escolha uma bebida: ")
                Leia(opcaoBebida)

                // Processando a escolha de Bebida
                escolha opcaoBebida
                    caso 1
                        bebidaEscolhida <- "Suco de Laranja"
                    caso 2
                        bebidaEscolhida <- "Refrigerante"
                    outrocaso
                        EscrevaL("Opção inválida! Tente novamente.")
                fimescolha
            caso 3
                // Submenu de Sobremesas
                EscrevaL("Menu de Sobremesas:")
                EscrevaL("1 - Pudim")
                EscrevaL("2 - Sorvete")
                Escreva("Escolha uma sobremesa: ")
                Leia(opcaoSobremesa)

                // Processando a escolha de Sobremesa
                escolha opcaoSobremesa
                    caso 1
                        sobremesaEscolhida <- "Pudim"
                    caso 2
                        sobremesaEscolhida <- "Sorvete"
                    outrocaso
                        EscrevaL("Opção inválida! Tente novamente.")
                fimescolha
            caso 4
                // Exibindo o resumo das escolhas
                EscrevaL("Resumo das Escolhas:")
                EscrevaL("Prato: ", pratoEscolhido)
                EscrevaL("Bebida: ", bebidaEscolhida)
                EscrevaL("Sobremesa: ", sobremesaEscolhida)
                EscrevaL("Obrigado pela sua visita!")
            outrocaso
                EscrevaL("Opção inválida! Tente novamente.")
        fimescolha
    ate opcaoMenu = 4
Fimalgoritmo