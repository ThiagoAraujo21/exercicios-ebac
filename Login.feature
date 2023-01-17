Feature: Tela de Login
    Como cliente da EBAC - Shop
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background:
        Given que eu esteja na tela de login

    Scenario Outline: Autênticação Válida

        When eu digitar o <Usuario>
        And digitar a <Senha>
        Then deve executar a <Acao>

        Examples:
            | Usuario          | Senha       | Acao                                 |
            | "User1@ebac.com" | "Senha@123" | "Direcionar para a tela de Checkout" |
            | "User2@Ebac.com" | "Senha@321" | "Direcionar para a tela de Checkout" |
            | "User3@Ebac.com" | "Senha123@" | "Direcionar para a tela de Checkout" |

    Scenario Outline: Autênticação Inválida

        When eu digitar o <Usuario>
        and digitar a <Senha>
        Then deve exibir a seguinte <Mensagem>

        Examples:
            | Usuario           | Senha       | Mensagem                     |
            | "User1@ebac.xom"  | "Senha@123" | “Usuário ou senha inválidos” |
            | "User2@ebac.com"  | "senja@321" | “Usuário ou senha inválidos” |
            | "NoUser@ebac.com" | "sen2577"   | “Usuário ou senha inválidos” |