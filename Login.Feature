        #language: pt

        Funcionalidade: Tela de Login
        Como cliente da EBAC - Loja
        Quero fazer o login (autenticação) na plataforma
        Para visualizar meus pedidos

        Contexto:
        Dado que eu esteja na tela de login

        Esquema do Cenario: Autênticação Válida
        Quando eu digitar o <Usuario> e <Senha>
        Then deve direcionar para a tela de Checkout

            Exemplos:
            | Usuario               | Senha       |
            | "Usu4rio1@ebac. com"  | "Senha@123" |
            | "Usuário_2@Ebac. com" | "Senha@321" |
            | "Usuário3@Ebac. com"  | "Senha123@" |

        Esquema do Cenário: Autênticação Inválida

        Quando eu digitar o <Usuario> e <Senha>
        Then deve exibir a seguinte <Mensagem>

            Exemplos:
            | Usuario               | Senha       | Mensagem                     |
            | "Usu4rio1@ebac. xom"  | "Senha@123" | "Usuário ou senha inválidos" |
            | "Usuário_2@ebac. com" | "senja@321" | "Usuário ou senha inválidos" |
            | "NoU$er@ebac. com"    | "sen2577"   | "Usuário ou senha inválidos" |