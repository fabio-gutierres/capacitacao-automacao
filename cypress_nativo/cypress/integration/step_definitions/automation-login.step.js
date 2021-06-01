/// <reference types="cypress" />
import { Given, When, Then, And, But } from 'cypress-cucumber-preprocessor/steps'
import {AutomationLogin} from '../../pages/login.page'



Given(`que esteja no site automation practice`, (site) => {
  AutomationLogin.visitar_site(site)
});


When(`clicar em Sign in`, (signin) => {
  AutomationLogin.clicar_signin(signin)
});



When(`logar com email {string} e senha {string}`, (email, senha) => {
  AutomationLogin.realizar_login(email, senha)
});



Then(`devera ser redirecionado a pagina {string}`, (pagina) => {
  AutomationLogin.direcionamento_page(pagina)
});


Then(`devera ser exibida {string}`, (mensagem) => {
  AutomationLogin.exibir_mensagem(mensagem)  
});

