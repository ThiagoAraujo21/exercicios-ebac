Feature: Tela de Selecão do Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given eu esteja na tela de Selecão de Produtos

    Scenario Outline: Permite inserir para o carrinho

        When Eu informar <Tamanho>
        And a <Cor>
        And a <Quantidade> que seja maior 0 e menor que 10
        Then Permitir que eu vá para o carrinho

        Examples:
            | Tamanho | Cor      | Quantidade |
            | "M"     | "Blue"   | "3"        |
            | "L"     | "Orange" | "1"        |
            | "XS"    | "Red"    | "5"        |

    Scenario Outline: Não Permite inserir para o carrinho

        When eu deixar de Informar <Tamanho>
        And a <Cor>
        And a <Quandidade>
        Or informar a quantidade acima de 10
        Then Não permitir que eu vá para o carrinho

        Examples:
            | Tamanho | Cor      | Quantidade |
            | "M"     | ""       | "3"        |
            | ""      | "Orange" | "1"        |
            | "XS"    | "Red"    | ""         |
            | "XL"    | "Red"    | "12"       |

    Scenario Outline: Limpar as informações selecionadas

        When eu clicar em "Limpar"
        Then Não deverá manter preenchido o <Tamanho>
        And a <Cor>
        And a <Quantidade>

        Examples:
            | Tamanho | Cor | Quantidade |
            | ""      | ""  | ""         |
