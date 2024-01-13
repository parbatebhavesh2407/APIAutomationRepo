Feature: json path validator

  Background: Create and Initialize Base URL
    Given url 'https://reqres.in/'

  Scenario: To get the value of property using json path expression
    Given path '/api/users?page=2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    # karate.jsonPath(doc,jsonpath expression)
    * def book1 = karate.jsonPath(response, "$[?(@.book)]")
    And print "JsonArrayBook", book1
