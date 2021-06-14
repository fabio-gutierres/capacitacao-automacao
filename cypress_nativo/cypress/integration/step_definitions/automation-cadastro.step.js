/// <reference types="cypress" />
import { Given, When, Then, And, But } from 'cypress-cucumber-preprocessor/steps'
import { AutomationCadastro } from '../../pages/cadastro.page';



Given(`que esteja no site automation practice`, (site) => {
    AutomationCadastro.visitar_site(site)
});


When(`clicar em Sign in`, (signin) => {
    AutomationCadastro.clicar_signin(signin)
});


Then(`realizar cadastro`, (cadastro) => {
    AutomationCadastro.realizar_cadastro(cadastro)
});