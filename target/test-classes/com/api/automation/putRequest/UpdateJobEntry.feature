Feature: To update Job Entry

  Background: Create and initialize Base URL
    Given url 'https://reqres.in/'

  Scenario: To update Job Entry PUT request
    Given path '/api/users'
    * def getRandomValue = function(){return Math.floor(Math.random() * 1000)}
    * def id = getRandomValue()
    And request {"jobid":"#(id)", "name": "morpheus2", "job": "leader","Dep": "IT"}
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 201
    #PUT request
    Given path 'update/users/2'
    And request
      """
      {
      "jobid":"#(jobid)", 
      "name": "morpheus33", 
      "job": "leader",
      "Dep": "IT"
      }
      """
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method put
    And print response
    Then status 200

  #* def projectArray = karate.jsonPath(response,"@[?(@.jobid == "+id +") )
  Scenario: To update job by calling another feature file
    #<Gherkin Keyword> <call> <read(<location of the file>)>
    Given call read("../CreateJobEntry.feature")
    #PUT request
    Given path 'update/users/2'
    And request
      """
      {
      "jobid":"120", 
      "name": "morpheus33", 
      "job": "leader",
      "Dep": "IT"
      }
      """
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method put
    And print response
    Then status 200
    #* def projectArray = karate.jsonPath(response,"@[?(@.jobid == "+id +") )
