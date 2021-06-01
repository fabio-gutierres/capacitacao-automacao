

Feature: login
    Como usuario da aplicação
    Quero realizar o login
    Para utilizar das funcionalidades do site


        Background: Pagina do site
            Given que esteja no site automation practice

        Scenario Outline: Realizar login
             When clicar em Sign in
              And logar com email "<email>" e senha "<senha>"
             Then devera ser redirecionado a pagina "<pagina>"
              And devera ser exibida "<mensagem>"
        Examples:
                  | email          | senha    | pagina     | mansagem                                                                                 |
                  | teste@1234.com | 32173433 | my account | Welcome to your account. Here you can manage all of your personal information and orders |
                  | teste          | 32173433 | login      | Invalid email address                                                                    |
                  | teste@1234.com | 3217     | login      | Invalid password                                                                         |
                  | teste@1234.com |          | login      | Password required                                                                        |
                  |                | 32173433 | login      | An email address required                                                                |
              