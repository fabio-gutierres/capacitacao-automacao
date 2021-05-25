#language: pt

Funcionalidade: Login
    Como 
    Quero 
    Para 

#POST
        Esquema do Cenário: Realizar login
             Quando acessar a rota /login
              E preencher os campos com login "<tipo>"
             Então deverá retornar schema "post_login" com "<status>" e "<mensagem>"
        Exemplos:
                  | tipo     | status | mensagem                    |
                  | valido   | 200    | login realizado com sucesso |
                  | invalido | 400    | e-mail e/ou senha invalidos |
