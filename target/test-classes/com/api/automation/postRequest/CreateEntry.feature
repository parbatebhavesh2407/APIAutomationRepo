Feature: POST Request - Used to create entry in the application

  Background: Create and Initialize Base URL
    Given url 'https://reqres.in/'

	@Regression
  Scenario: Using POST Request
    Given path '/api/users'
   # And request {"name": "morpheus2", "job": "leader","Dep": "IT"}
   	* def body = read("dataPackage/JsonRequest8.json")
   	And request body 
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 201
    And match response.name == 'morpheus2'

	@Smoke
  Scenario: Using Embedded Expression
    Given path '/api/users'
    * def getDep = function(){return Math.floor(Math.random() * 1000)} 
    And request {"name": "morpheus2", "job": "leader","Dep": '#(getDep())'}
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 201
    And print response
    And match response.name == 'morpheus2'