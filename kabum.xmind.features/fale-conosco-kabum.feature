#language: pt

Funcionalidade: Fale Conosco
    Como usuário da aplicação
    Quero realizar realizar um atendiomento via chat
    Para poder tirar duvidas sobre produto

        Contexto: Pagina do site
            Dado que esteja na home
              E que esteja logado
        Cenário: Atendimento via chat
             Quando clicar em "<Fale Conosco>"
              E clicar em "<atendimento via chat>"
              E clicar em "<Dúvidas de produto>"
             Então deverá ser redirecionado ao chat com atendente online
            
                                        


        