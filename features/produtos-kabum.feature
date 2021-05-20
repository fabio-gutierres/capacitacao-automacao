#language: pt

Funcionalidade: Produto
    Como usuário da aplicação
    Quero realizar buscas aleatória e também por filtros no site
    Para poder encontrar determinado produto

        Contexto: logado no site
            Dado que esteja na home
              E que esteja logado

        Cenário: Barra de busca
             Quando clicar na barra de busca
              E digitar por "Headsets"
              E clicar em "Buscar"
             Então deverá ser redirecionado a pagina com todos os "Headsets" do site

        Cenário: Sugestão de produto
             Quando digitar por "mouse" na barra de busca
             Então deverá aparecer produtos sugeridos

        Esquema do Cenário: Filtro
            Dado que esteja na pagina de "Headsets" do site
             Quando filtrar por "<Marcas>" e "<Iluminação>" e "<Conexões>"
             Então deverá ser direcionado a pagina que contem os produtos do filtro
        Exemplos:
                  | Marcas  | Iluminação | Conexões |
                  | Astro   | Rainbow    | P2       |
                  | Corsair | LED        | P3       |
                  | HyperX  | LED        | USB      |
                  | Razer   | Rainbow    | P3       |

        Cenário: Departamentos
             Quando entrar no departamento Hardware
              E clicar em "SSD"
             Então deverá ser redirecionado para a página todos "SSD" do site

        Cenário: Informações
            Dado que tenha pesquisado o produto
             Quando clicar no produto encontrado
              E estiver na pagina do produto
             Então deverá aparecer o campo de avaliações do produto
              E deverá aparecer o campo de perguntas e respostas
        
        Cenário: Produtos similares
            Dado que tenha pesquisado o produto
             Quando clicar no produto encontrado
              E estiver na pagina do produto
             Então deverá aparecer o campo com Produtos similares

        Cenário: Open Box - Produtos Seminovos
            Dado que esteja na pagina do produto
             Quando clicar em open box "+"
             Então deverá aparecer os produtos seminovos

        Esquema do Cenário: calcular Frete
            Dado que esteja na pagina do produto
             Quando preencher o campo "<Digite seu CEP>"
              E clicar em "Calcular Frete"
             Então deverá abrir o modal com "<mensagem>"
        Exemplos:
                  | CEP      | mensagem                                                                                    |
                  | válido   | "frete" "prazo" "valor"                                                                     |
                  | inválido | Ocorreu um erro em sua consulta, provavelmente sua cidade não consta em nossa base de dados |


        