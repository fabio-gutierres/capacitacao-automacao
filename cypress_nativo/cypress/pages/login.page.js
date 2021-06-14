


export class AutomationLogin {

    static visitar_site(site){
        cy.visit('/');
    }

    static clicar_signin(signin){
        cy.get('.login').click();
    }
    
    static realizar_login(email, senha){
        cy.get('#email')
        .type(`${email}{SHIFT}`);

        cy.get('#passwd')
        .type(`${senha}{SHIFT}`);

        cy.get('#SubmitLogin > span')
        .click();
    }

    static direcionamento_page(pagina){
        switch (pagina) {
            case 'my account':
                pagina = 'http://automationpractice.com/index.php?controller=my-account'

                break;

            case 'login':
                pagina = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

                break;
        }
    }

    static exibir_mensagem(mensagem){
        switch (mensagem) {
            case 'my account':
                cy.get('.info-account')
                .should('contain', mensagem)

                break;

            case 'invalid email address':
                cy.get('ol > li')
                .should('contain', mensagem)

                break;

            case 'invalid password':
                cy.get('ol > li')
                .should('contain', mensagem)

                break;

            case 'campo senha vazio':
                cy.get('ol > li')
                .should('contains', mensagem)

                break;

            case 'campo email vazio':
                cy.get('ol > li')
                .should('contains', mensagem)

                break;
        }   
    }
}