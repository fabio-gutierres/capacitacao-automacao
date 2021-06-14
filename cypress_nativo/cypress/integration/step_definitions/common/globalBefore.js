beforeEach(() => {
    cy.log(
      "This will run once before all scenarios"
    )
    /**This function will make all the scenarios begin in the BaseUrl(config/prod.json)*/
    // cy.visit('')
    // cy.clearLocalStorage()
    // cy.reload()
  })