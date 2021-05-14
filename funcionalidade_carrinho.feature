#language: pt

Funcionalidade: Carrinho
     Como usuário do e-commerce submarino
     Quero adicionar produtos ao carrinho
     Para  deletar um dos produtos e posteriormente verificar frete e prazo
        Contexto: Pagina do site e login
            Dado que esteja no site submarino
              E esteja logado
    
        Esquema do Cenário: Adicionar produto ao carrinho
             Quando adicionar "<produto>" ao carrinho
             Então deverá ser exibido "<produto>" e "<valor>"
        Exemplos:
                  | produto   | valor           |
                  | produto_1 | Valor_produto_1 |
                  | produto_2 | valor_produto_2 |

        Cenário: Remover produto do carrinho
            Dado que estejam adicionados dois produtos ao carrinho
             Quando remover um produto do carrinho "produto_2"
             Então deverá ser exibido somente "produto_1" no carrinho
             
        Esquema do Cenário: Verificar frete e prazo
            Dado que esteja adiconado "produto_1" no carrinho
             Quando preencher o campo "<CEP>"
             Então deverá receber "<mensagem>"
        Exemplos:
                  | CEP      | mensagem                            |
                  | válido   | receba até <dia> de <mes> - <valor> |
                  | inválido | Preencha com um cep válido          |

            




        