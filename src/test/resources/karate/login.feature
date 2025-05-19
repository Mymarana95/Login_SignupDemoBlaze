Scenario: Attempt to register an existing user
  Given url 'https://api.demoblaze.com/signup'
  And request { username: 'yoli95', password: 'eW9saTk1' }
  When method post
  Then status 200
  And match response == { errorMessage: '#present' }
