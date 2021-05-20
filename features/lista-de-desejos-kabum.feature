#language: pt

Funcionalidade: Lista de desejos
    Como usuário da aplicação
    Quero adiconar um produto na lista de desejos
    Para comprar ou remover o produto

        Contexto: logado no site
            Dado que esteja na home
              E que esteja logado

        Cenário: adicionar produto
             Quando clicar no produto
              E clicar em "+ Lista de desejos"
             Então deverá ser redirecionado pagina de favoritos
              E o produto devera estar adiconado

        Cenário: Botão "Comprar"
            Dado que esteja na pagina de Favoritos
              E com o produto adiconado em Favoritos
             Quando selecionar o produto
              E clicar em "Comprar"
             Então deverá ser redirecionado ao carrinho

        Cenário: Botão "Remover"
            Dado que esteja na pagina de Favoritos
              E com o produto adiconado em Favoritos
             Quando clicar em "Remover"
             Então o produto deverá ser removido da pagina