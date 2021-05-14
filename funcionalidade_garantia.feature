#language: pt

Funcionalidade: Garantia
     Como usuário do site submarino
     Quero adicionar garantia ao produto adquirido 
     Para que possa ter uma segurança maior
        Contexto:
            Dado que esteja no site submarino
              E esteja logado
              E seleciona produto com garantia
    
        Esquema do Cenário: Garantias
             Quando clicar em "<tipo>" de garantia
             Então deverá ser adicionado a "<porcentagem>" com base no valor total do produto
        Exemplos:
                  | Tipo                   | porcentagem |
                  | Sem Garantia estendida | 0%          |
                  | +12 meses              | 10%         |
                  | +24 meses              | 13%         |



        