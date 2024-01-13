Feature: To validate Fuzzy Matcher

  Background: Setup Base URL
    Given url 'https://reqres.in/'

  Scenario: To Validate json array fuzzy matcher
    Given path '/api/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    #complex fuzzy matcher 
    And match response.data[0].id == '#? _ == 1'
    #And match response.data[0].id == '#? _ != 1' this scenario will fail
    And match response.data[0].id == '#? _ >= 1'
    And match response.data[3].name == '#string? _.length >=1'
    #And match response.data[3].name == '#string? _.length <=1' this scenario will fail as lenght is greater than 1
    #to validate json array
    And match response.data == '#[]'
    And match response.data == '#[6]'
    # To check its array of sting
    #And match response.data == '#[6] #string'
    
    
   
    
    
    
    
    
		
		