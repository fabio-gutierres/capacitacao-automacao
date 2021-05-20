#language: pt

Funcionalidade: Meus pedidos
    Como usuário da aplicação
    Quero consultar meus pedidos
    Para poder utilizar de algumas opções da pagina

        Contexto: logado no site
            Dado que esteja na home
              E que esteja logado

        Cenário: Acompanhar pedido
             Quando clicar em "meus pedidos"
              E clicar em "número do pedido"
             Então deverá ser redirecionado a "detalhes da compra"
              E deverá ser destacado o campo "Status do pedido"

        Esquema do Cenário: Formularios
             Quando clicar em "meus pedidos"
              E clicar em "<Botão>"
              E clicar em "abrir solicitação"
             Então deverá ser redirecionado a "<formulario>"
        Exemplos:
                  | Botão          | formulario                   |
                  | Garantia       | formulario de garantia       |
                  | Arrependimento | formulario de arrependimento |

        Cenário: Favoritos
             Quando clicar em "meus pedidos"
              E localizar  "Favoritos"
             Então deverá ver todos produtos favoritados

        Esquema do Cenário: Caixas de iteração
             Quando clicar em "Meus pedidos"
              E clicar na "<caixa>"
             Então sera redirecionado a "<pagina>"
        Exemplos:
                  | caixa            | pagina          |
                  | Minha avaliaçoes | Avaliar produto |
                  | Protocolos       | Meus protocolos |
                  | Sorteios         | Meus sorteios   |