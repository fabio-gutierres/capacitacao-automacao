

export class AutomationCadastro {
    static visitar_site(site){
        cy.visit('/');
    }

    static clicar_signin(signin){
        cy.get('.login').click();
    }
    
    static realizar_cadastro(cadastro){
        cy.get('#email_create').type('teste@1234567.com');
        // clica no botao para criar conta
        cy.get('#SubmitCreate > span').click();
        // prencher campos de cadastro
        //clicar no tittle
        cy.get('#id_gender1').click();
        // preencher campos
        cy.get('#customer_firstname').type('Julio');
        cy.get('#customer_lastname').type('Silva dos Santos');
        cy.get('#passwd').type('32173433');
        
        cy.get('[id=days]').select('21');
        cy.get('[id=months]').select('March');
        cy.get('[id=years]').select('2002');
        
        cy.get('#address1').type('alameda do cortigio, 833');
        cy.get('#city').type('Dallas');
        
        cy.get('#id_state').select('Texas');
        
        cy.get('#postcode').type('00000');
        cy.get('#phone_mobile').type('5515988766084');

        // clicar botao register
        cy.get('#submitAccount > span').click(); 
    }

}