Feature: POST Request - Used to create entry in the application

  Scenario: Using POST Request
    Given url _url
    And path _path
    * def getRandomValue = function(){return Math.floor(Math.random() * 1000)}
		* def id = getRandomValue()
    And request {"JobID":"#(_id)", "name": "morpheus2", "job": "leader","Dep": "IT"}
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status 201
