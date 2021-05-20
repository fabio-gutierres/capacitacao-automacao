#language: pt

Funcionalidade: Autenticação
    Como usuário da aplicação
    Quero realizar o cadastro e também o login no site
    Para poder realizar compras

        Contexto: Pagina do login do site
            Dado que esteja na pagina de login

        Esquema do Cenário: Cadastro
             Quando preencher dados cadastrais "<email>", "<Crie sua senha>", "<Confirme sua senha>", "<CPF>", "<CEP>"
              E clicar em cadastrar
             Então deverá ser redirecionado para a "<pagina>"
              E deverá ser exibido a "<mensagem>"
        Exemplos:
                  | email    | crie sua senha | confirme sua senha | CPF      | CEP      | pagina | mensagem                                                   |
                  | valido   | valido         | valido             | valido   | valido   | home   | Olá!                                                       |
                  | invalido | valido         | valido             | valido   | valido   | login  | Erro: Campo de login/email não foi preenchido corretamente |
                  | vazio    | valido         | valido             | valido   | valido   | login  | Erro: Campo de login/email não foi preenchido corretamente |
                  | valido   | valido         | invalido           | valido   | valido   | login  | As duas senhas não são iguais - Tente novamente            |
                  | valido   | valido         | valido             | valido   | invalido | login  | Erro: O CEP informado é invalido                           |
                  | invalido | invalido       | invalido           | invalido | invalido | login  | Erro: Campo de login/email não foi preenchido corretamente |
            
        Esquema do Cenário: Login com email
             Quando logar com email "<email>" e senha "<senha>"
             Então deverá ser redirecionado para a página "<pagina>"
              E deverá ser exibido a mensagem "<mensagem>"
        Exemplos:
                  | email              | senha          | pagina | mensagem                                             |
                  | teste@teste.com.br | testecorreto   | home   | Olá, teste!                                          |
                  | teste2teste.login  | testecorreto   | login  | ERRO: Seu E-mail ou senha informados são inválidos   |
                  | teste@teste.com.br | testeincorreto | login  | ERRO: Seu E-mail ou senha informados são inválidos   |
                  |                    | testecorreto   | login  | O campo Login/E-mail não foi preenchido corretamente |
                  | teste@teste.com.br |                | login  | Senha não informada                                  |

        Esquema do Cenário: Login com CPF
             Quando logar com CPF "<CPF>" e senha "<senha>"
             Então deverá ser redirecionado para a página "<pagina>"
              E deverá ser exibido a mensagem "<mensagem>"
        Exemplos:
                  | CPF            | senha          | pagina | mensagem                                             |
                  | 484.832.982-00 | testecorreto   | home   | Olá, teste!                                          |
                  | 484.832.98     | testecorreto   | login  | ERRO: Seu E-mail ou senha informados são inválidos   |
                  | 484.832.982-00 | testeincorreto | login  | ERRO: Seu E-mail ou senha informados são inválidos   |
                  |                | testecorreto   | login  | O campo Login/E-mail não foi preenchido corretamente |
                  | 484.832.982-00 |                | login  | Senha não informada                                  |

        Esquema do Cenário: Login Social
             Quando clicar "conecte com facebook"
              E logar com facebook "<Conta>"
             Então deverá ser redirecionado para a página "<pagina>"
              E deverá ser exibido a mensagem "<mensagem>"
        Exemplos:
                  | conta       | pagina | mensagem                   |
                  | válido      | home   | Olá, teste!                |
                  | inválido    | login  | E-mail ou senha incorretos |
                  | inexistente | login  | E-mail ou senha incorretos |
                                        


        