#language: pt

Funcionalidade: Carrinhos
    Como 
    Quero 
    Para 

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
#GET
        Cenário: Listar carrinhos cadastrados
             Quando acessar a rota /carrinhos
             Então Então deverá retornar schema "get_carrinhos" status 200 com a lista de carrinhos

        Esquema do Cenário: Buscar carrinho por id
             Quando acessar a rota /carrinhos/{_id}
              E o carrinho for "<tipo>"
             Então deverá retornar schema "get_carrinhos_id" com "<status>" e "<mensagem>"
        Exemplos:
                  | tipo     | status | mensagem                |
                  | válido   | 200    | carrinho encontrado     |
                  | inválido | 400    | carrinho não encontrado |
#POST
        Esquema do Cenário: Cadastrar carrinhos
             Quando acessar a rota /carrinhos
              E adicionar produtos ao carrinho
             Então deverá retornar schema "post_carrinhos" com "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                            |
                  | 201    | cadastro com sucesso                |
                  | 400    | algo deu errado                     |
                  | 401    | token ausente, inválido ou expirado |
#DELETE
        Esquema do Cenário: Excluir carrinho
             Quando acessar a rota /carrinhos/concluir-compra
              E concluir compra
             Então deverá retornar schema "delete_carrinho_concluir" com "<status>" e "<mensagem>"
        Exemplos:
                  | status | mensagem                                                                      |
                  | 200    | registro excluido com sucesso / não foi encontrado carrinho para esse usuário |
                  | 401    | token ausente, inválido ou expirado                                           |

        Esquema do Cenário: Retornar produtos para estoque
             Quando acessar a rota /carrinhos/cancelar-compra
              E cancelar compra
             Então deverá retornar schema "delete_carrinho_cancelar" com "<status>" e "<mensagem>" e os produtos seram direcionados para o estoque
        Exemplos:
                  | status | mensagem                                                                      |
                  | 200    | registro excluido com sucesso / não foi encontrado carrinho para esse usuário |
                  | 401    | token ausente, inválido ou expirado                                           |

