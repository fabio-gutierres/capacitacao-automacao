#language: pt

Funcionalidade: Produtos
    Como 
    Quero 
    Para 

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
#GET
        Cenário: Listar produtos cadastrados
             Quando acessar a rota /produtos
             Então deverá retornar status 200 com a lista de produtos

        Esquema do Cenário: Buscar produto por id
             Quando acessar a rota /produtos/{_id}
              E o produto for "<tipo>"
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | tipo     | status | mensagem               |
                  | válido   | 200    | produto encontrado     |
                  | inválido | 400    | produto não encontrado |
#POST
        Esquema do Cenário: Cadastrar produtos
             Quando acessar a rota /produtos
              E preencher os campos
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                            |
                  | 201    | cadastro com sucesso                |
                  | 400    | ja existe produto com esse nome     |
                  | 401    | token ausente, inválido ou expirado |
                  | 403    | rota exclusiva para administradores |
#DELETE
        Esquema do Cenário: Excluir produto
             Quando acessar a rota /produtos/{_id}
              E selecionar o ID do produto
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                            |
                  | 200    | registro excluido com sucesso       |
                  | 400    | produto faz parte do carrinho       |
                  | 401    | token ausente, inválido ou expirado |
                  | 403    | rota exclusiva para administradores |
#PUT
        Esquema do Cenário: Editar produto
             Quando acessar a rota /produtos/{_id}
              E selecionar o ID do produto
              E editar descrição do produto
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                            |
                  | 200    | Alterado com sucesso                |
                  | 201    | cadastro com sucesso                |
                  | 400    | ja existe produto com esse nome     |
                  | 401    | token ausente, inválido ou expirado |
                  | 403    | rota exclusiva para administradores |
        


        