#language: pt

Funcionalidade: Usuarios
    Como 
    Quero 
    Para 

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
#GET
        Cenário: Listar usuarios cadastrados
             Quando acessar a rota /usuarios
             Então Então deverá retornar status 200 com a lista de usuarios

        Esquema do Cenário: Buscar usuarios por id
             Quando acessar a rota /usuarios/{_id}
              E o usuario for "<tipo>"
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | tipo     | status | mensagem               |
                  | válido   | 200    | usuario encontrado     |
                  | inválido | 400    | usuario não encontrado |
#POST
        Esquema do Cenário: Cadastrar usuario
             Quando acessar a rota /usuarios
              E preencher os campos
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem             |
                  | 200    | cadastro com sucesso |
                  | 400    | e-mail ja cadastrado |
#DELETE
        Esquema do Cenário: Excluir usuario
             Quando acessar a rota /usuarios/{_id}
              E excluir usuario
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                        |
                  | 200    | registro excluido com sucesso   |
                  | 400    | usuario com carrinho cadastrado |
#PUT
        Esquema do Cenário: Editar usuario
             Quando acessar a rota /usuarios/{_id}
              E editar usuario
             Então deverá retornar "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem             |
                  | 200    | alterado com sucesso |
                  | 201    | cadastro com sucesso |
                  | 400    | e-mail ja cadastrado |
