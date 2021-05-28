/// <reference types="cypress" />
import { Given, When, Then, And, But } from 'cypress-cucumber-preprocessor/steps'



Given(`que esteja no site automation practice`, () => {
	cy.visit('/')
    
});


When(`clicar em Sign in`, () => {
	cy.get('.login').click()
});


Then(`realizar login`, () => {
    cy.get('#email').type('teste@1234.com')
    .should('have.value', 'teste@1234.com'); //validaçao da escrita
    cy.get('#passwd').type('32173433')
    .should('have.value', '32173433');
    cy.get('#SubmitLogin > span').click(); 
});


