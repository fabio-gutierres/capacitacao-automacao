#language: pt

Funcionalidade: Meus pedidos
    Como usuário da aplicação
    Quero consultar meus pedidos
    Para poder acompanhar seu status ou consultar garantia

        Contexto: logado no site com pedido realizado
            Dado que esteja na home
              E que esteja logado
              E realizado um pedido

        Cenário: Acompanhar pedido
             Quando clicar em "<meus pedidos>"
              E clicar em "<número do pedido>"
             Então deverá ser redirecionado a "detalhes da compra"
              E deverá ser destacado o campo "Status do pedido"

        Cenário: Garantia
             Quando clicar em "<meus pedidos>"
              E clicar em "<Garantia>"
              E clicar em "<abrir solicitação>"
             Então será redirecionado a "formulário de garantia"
                                        


        