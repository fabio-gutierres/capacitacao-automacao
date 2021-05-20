#language: pt

Funcionalidade: Carrinho
    Como usuário da aplicação
    Quero utilizar o carrinho de compras
    Para poder realizar algumas açoes dentro dele

        Contexto: logado no site
            Dado que esteja na home
              E que esteja logado

        Esquema do Cenário: Adicionar produto ao carrinho
             Quando adicionar "<produto>" ao carrinho
             Então deverá ser exibido "<produto>" e "<valor>"
              E deverá aparecer a menssagem "Este produto foi adicionado ao carrinho"
        Exemplos:
                  | produto       | valor     |
                  | Headset Hypex | R$ 600,00 |
                  | Headset Astro | R$ 853,00 |

        Cenário: Remover produto do carrinho
            Dado que estejam adicionados dois produtos ao carrinho
             Quando remover um produto do carrinho "Headset Hypex"
             Então deverá ser exibido somente o produto "Headset Astro" no carrinho

        Esquema do Cenário: Quantidade
            Dado que esteja com produto no carrinho
             Quando clicar em "<botao>"
             Então deverá alterar a quantidade do produto
              E deverá aparecer "<resultado>"
        Exemplos:
                  | botao | resultado |
                  | +     | 2         |
                  | -     | 1         |

        Cenário: finalizar compra
            Dado que esteja com produto no carrinho
             Quando clicar em "finalizar compra"
             Então deverá ser redirecionado a pagina de identificação

        Cenário: Continuar comprando
            Dado que esteja com produto no carrinho
             Quando clicar em "Continuar comprando"
             Então deverá ser redirecionado a pagina home