            #language: pt

            Funcionalidade: Tela de Seleção
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na tela de Selecão de Produtos

            Esquema do Cenario: Permite inserir para o carrinho
            Quando  Eu informar <Tamanho>, <Cor>
            E <Quantidade> que seja maior 0 e menor que 10
            Então  Permitir que eu vá para o carrinho

            Exemplos:
            | Tamanho | Cor        | Quantidade |
            | "M"     | "Azul"     | "3"        |
            | "L"     | "laranja"  | "1"        |
            | "XS"    | "Vermelho" | "5"        |

            Esquema do Cenario: Não Permite inserir para o carrinho

            Quando eu deixar de Informar <Tamanho>, <Cor>
            E  <Quandidade> ou  informar a quantidade acima de 10
            Então  Não permitir que eu vá para o carrinho

            Exemplos:
            | Tamanho | Cor        | Quantidade |
            | "M"     | ""         | " 3"       |
            | ""      | " Laranja" | "1"        |
            | "XS"    | "Vermelho" | ""         |
            | "XL"    | "Vermelho" | "12"       |

            Esquema do Cenário: Limpar as informações selecionadas

            Quando eu clicar em "Limpar"
            Então  Não deverá manter preenchido o <Tamanho>, <Cor> e <Quantidade>

            Exemplos:
            | Tamanho | Cor | Quantidade |
            | ""      | ""  | ""         |

