            #language: pt

            Funcionalidade: Tela de Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na tela de Checkout

            Esquema do Cenario: Finalização da Compra Permitida

            Quando eu preencher com dados válidos
            <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone> e <Endereco de E-mail>
            Entao deve permitir que eu prossiga para finalizar a compra

            Exemplos:

            | Nome    | Sobrenome   | Pais     | Endereco                           | Cidade           | CEP         | Telefone   | Endereco de E-mail |
            | "José"  | "Rodrigues" | "Brasil" | "Rua mexerica, 69, Bairro Pomar"   | "Porto Alegre"   | "70743-050" | "31333933" | "Jr@Gmail.com"     |
            | "Ana"   | "Marques"   | "Brasil" | "Rua Leão, 51, Bairro Savana"      | "Belém"          | "06727-203" | "32657342" | "Anam@Gmail.com"   |
            | "Pedro" | "Gonçalves" | "Brasil" | "Rua Chevette, 77, Bairro Garagem" | "Belo Horizonte" | "88511-650" | "36515034" | "PG@Gmail.com"     |

            Esquema do Cenario: Finalização da Compra Não Permitida

            Quando eu preencher com dados inválidos ou não preencher
            <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone> e <Endereco de E-mail>
            Entao Deve exibir a mensagem "Alguns dados não foram preenchidos ou estão incorretos. Corrija para proseguir"

            Exemplos:
            | Nome      | Sobrenome | Pais     | Endereco                              | Cidade          | CEP         | Telefone   | Endereco de E-mail |
            | "Michele" | "Silva"   | "Brasil" | ""                                    | "Manaus"        | "70743-050" | "31333933" | "MS@Gmail.com"     |
            | "Armando" | "Pinto"   | "Brasil" | "Rua Peixe, 69, Bairro Pomar Cardume" | "Florianópolis" | "050"       | "31333933" | "AP@Gmail.com"     |
            | "Pedro"   | "Silva"   | "Brasil" | "Rua Cachorro, 77, Bairro Matilha"    | "Tiradentes"    | "88511-650" | "35034"    | "PS@gmail.com"     |

Cenario: Validação de Formato e-mail inválido
Quando eu preencher o e-mail "Pedro@Jmail.cm"
Entao exibir a mensagem de alerta "Insira um e-mail válido para continuar"