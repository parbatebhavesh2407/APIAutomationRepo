Feature: To validate using file

  Background: Setup Base URL
    Given url 'https://reqres.in/'

  Scenario: To Validate json array fuzzy matcher
    Given path '/api/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def actualResponse = read("../JsonResponse1.json")
    And match response == actualResponse
    And print actualResponse
