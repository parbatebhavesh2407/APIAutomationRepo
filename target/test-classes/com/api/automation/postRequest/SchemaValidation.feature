Feature: Schema Validation

  Background: Create and Initialize Base URL
    Given url 'https://reqres.in/'

  Scenario: Using POST Request
    Given path '/api/users'
    # And request {"name": "morpheus2", "job": "leader","Dep": "IT"}
    * def body = read("dataPackage/JsonRequest8.json")
    And request body
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    And print response
    And match response ==
      """
      {
      "name":"#string",
      "job":"#string",
      "Dep":"#string",
      "id":"#string",
      "createdAt":"#string"
      }
      """
