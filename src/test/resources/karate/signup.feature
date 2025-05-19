Feature: Signup functionality

  Scenario: Register a new user
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'nuevoUsuario123', password: 'password123' }
    When method post
    Then status 200
    * print response

  Scenario: Attempt to register an existing user
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'nuevoUsuario123', password: 'password123' }
    When method post
    Then status 200
    * print response
    And match response == { errorMessage: 'This user already exist.' }

