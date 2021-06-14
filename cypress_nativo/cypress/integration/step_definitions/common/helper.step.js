/// <reference types="cypress" />
const path = require('path')

const environment = Cypress.env('environment') /** Recebe o ambiente indicado pela pasta config de acordo com o ambiente indicado em plugins/index.js */
const fullPath = path.dirname(__filename) /** Caminho até o arquivo atual */

export class StepHelper{

  static validar_ambiente(ambiente){
    switch(ambiente){
      case 'development':
        cy.wrap(environment)
            .should('eq', 'DEV')
        break;
      case 'production':
        cy.wrap(environment)
            .should('eq', 'PRD')
        break;
      default:
        cy.log(`O nome do ambiente informado não consta nas validações disponíveis! Verifique ${__filename}`)
        console.log(`O nome do ambiente informado não consta nas validações disponiveis! verifique ${_filename}`)
    }
  }

  static exemplo_fixture_dinamica(){
    cy.fixture(`example${environment}`).then( json =>{
      console.log(json.ComplexObject.arrayOfObjects[0].stringTwo)
    })
  }

}
