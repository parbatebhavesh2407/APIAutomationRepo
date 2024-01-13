Feature: To use DELETE request

  Background: Create url and initialize
    Given url 'https://petstore.swagger.io'

  Scenario: To use DELETE request to delete petID
    #1)create petid - using POST Request
    And path '/v2/pet'
    * def createPetID = read("createPetIDData.json")
    And request createPetID
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 200
    #2)delete petid - Using petid
    Given path '/v2/pet/989'
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method delete
    Then status 200
    #3)GET Request
    Given path '/v2/pet/989'
    And headers {Accept:'application/json', Content-type: 'application/json'}
    And method get
    Then status 404
    
    Scenario: To demo Request Chaining
    #Create a new petid
    #Extract petid and name from the response of Post request
    #Send the patch request , value of query parameter will be set by , info extracted by previous request
    #Extract the petid and name from the response of the patch request
    #get request with query parameter, value of query param is set by info extracted from response of patch request
    #add validation on name in the response of get request
    #1)create petid - using POST Request
    And path '/v2/pet'
    * def createPetID = read("createPetIDData.json")
    And request createPetID
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 200
    #2)delete petid - Using petid
    Given path '/v2/pet/989'
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method delete
    Then status 200
    #3)GET Request
    Given path '/v2/pet/989'
    And headers {Accept:'application/json', Content-type: 'application/json'}
    And method get
    Then status 404
    
    
    
    
    