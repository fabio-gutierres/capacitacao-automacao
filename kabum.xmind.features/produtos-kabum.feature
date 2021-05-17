#language: pt

Funcionalidade: Produto
    Como usuário da aplicação
    Quero realizar buscas aleatória e também por filtros no site
    Para poder encontrar determinado produto

        Contexto: logado no site
            Dado que esteja na home
              E que esteja logado

        Cenário: Barra de busca
             Quando clicar na barra "Buscar"
              E digitar por "Headsets"
             Então deverá ser redirecionado a pagina com todos os "Headsets" do site

        Esquema do Cenário: Filtro
            Dado que esteja na pagina de "Headsets" do site
             Quando filtrar por "<Marcas>" e "<Iluminação>" e "<Conexões>"
             Então então será direcionado a pagina que contem os produtos do filtro
        Exemplos:
                  | Marcas  | Iluminação | Conexões |
                  | Astro   | Rainbow    | P2       |
                  | Corsair | LED        | P3       |
                  | HyperX  | LED        | USB      |
                  | Razer   | Rainbow    | P3       |


        