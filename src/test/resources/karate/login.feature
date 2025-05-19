Feature: Login functionality

  Scenario: Login with correct credentials
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'nuevoUsuario123', password: 'password123' }
    When method post
    Then status 200
    * print response

  Scenario: Login with incorrect credentials
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'nuevoUsuario12345', password: '8796523' }
    When method post
    Then status 200
    * print response
    And match response == { errorMessage: '#present' }
