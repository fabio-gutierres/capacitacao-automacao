/// <reference types="cypress" />

describe('automationpractice', () => {
    it('devera poder realizar um login', () =>{
        //cy.visit - para visitar a pagina
        cy.visit('http://automationpractice.com/index.php');
        cy.get('.login').click()
        // cy.get - busca um elemento
        // .type - insere um texto
        cy.get('#email').type('teste@1234.com')
        .should('have.value', 'teste@1234.com'); //validaçao da escrita
        cy.get('#passwd').type('32173433')
        .should('have.value', '32173433');

        // clicar no botao
        cy.get('#SubmitLogin > span').click();
    });

    it('devera poder realizar um login no sistema', () => {

    });
});