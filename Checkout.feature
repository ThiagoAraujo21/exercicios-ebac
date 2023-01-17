Feature: Tela de Checkout
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given Eu esteja na tela de Checkout

    Scenario Outline: Finalização da Compra Permitida

        When eu preencher com dados válidos os campos de <Nome>
        And <Sobrenome>
        And <Pais>
        And <Endereco>
        And <Cidade>
        And <CEP>
        And <Telefone>
        And <Endereco de E-mail>
        Then Deve permitir que eu prossiga para finalizar a compra

        Examples:
            | Nome    | Sobrenome   | Pais     | Endereco                           | Cidade           | CEP         | Telefone   | Endereco de E-mail |
            | "José"  | "Rodrigues" | "Brasil" | "Rua mexerica, 69, Bairro Pomar"   | "Porto Alegre"   | "70743-050" | "31333933" | "Jr@Gmail.com"     |
            | "Ana"   | "Marques"   | "Brasil" | "Rua Leão, 51, Bairro Savana"      | "Belém"          | "06727-203" | "32657342" | "Anam@Gmail.com"   |
            | "Pedro" | "Gonçalves" | "Brasil" | "Rua Chevette, 77, Bairro Garagem" | "Belo Horizonte" | "88511-650" | "36515034" | "PG@Gmail.com"     |


    Scenario Outline: Finalização da Compra Não Permitida
        When eu não preencher com dados válidos os campos de <Nome>
        And <Sobrenome>
        And <Pais>
        And <Endereco>
        And <Cidade>
        And <CEP>
        And <Telefone>
        And <Endereco de E-mail>
        Then Deve exibir a mensagem "Alguns dados não foram preenchidos ou estão incorretos. Corrija para proseguir"
        And Não deve permitir que eu prossiga para finalizar a compra

        Examples:
            | Nome      | Sobrenome   | Pais     | Endereco                              | Cidade           | CEP         | Telefone   | Endereco de E-mail |
            | ""        | "Rodrigues" | "Brasil" | "Rua mexerica, 69, Bairro Pomar"      | "Porto Alegre"   | "70743-050" | "31333933" | "Jr@Gmail.com"     |
            | "Ana"     | ""          | "Brasil" | "Rua Leão, 51, Bairro Savana"         | "Belém"          | "06727-203" | "32657342" | "Anam@Gmail.com"   |
            | "Pedro"   | "Gonçalves" | ""       | "Rua Chevette, 77, Bairro Garagem"    | "Belo Horizonte" | "88511-650" | "36515034" | "PG@Gmail.com"     |
            | "Michele" | "Silva"     | "Brasil" | ""                                    | "Manaus"         | "70743-050" | "31333933" | "MS@Gmail.com"     |
            | "Arthur"  | "Menezes"   | "Brasil" | "Rua Lobo, 51, Bairro Alcatéia"       | ""               | "06727-203" | "32657342" | "AM@Gmail.com"     |
            | "Junior"  | "Severo"    | "Brasil" | "Rua Chave, 77, Bairro Molho"         | "Santo André"    | ""          | "36515034" | "JS@Gmail.com"     |
            | "Armando" | "Pinto"     | "Brasil" | "Rua Peixe, 69, Bairro Pomar Cardume" | "Florianópolis"  | "050"       | "31333933" | "AP@Gmail.com"     |
            | "Mariana" | "Pinheiro"  | "Brasil" | "Rua carro, 51, Bairro Frota"         | "Betim"          | "06727-203" | ""         | "MP@Gmail.com"     |
            | "Pedro"   | "Silva"     | "Brasil" | "Rua Cachorro, 77, Bairro Matilha"    | "Tiradentes"     | "88511-650" | "35034"    | ""                 |



    Scenario: Validação de Formato e-mail inválido
        When eu preencher o e-mail "Pedro@Jmail.cm"
        Then exibir a mensagem de alerta "Insira um e-mail válido para continuar"
