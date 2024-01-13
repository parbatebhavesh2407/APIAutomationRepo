Feature: To update Job Entry

  Background: Create and initialize Base URL
    Given url 'https://reqres.in/'

  Scenario: To update Job Entry PUT request
    #Given call read("../CreateJobEntry.feature")
    * def postreq = call read("../CreateJobEntry.feature")
    And print "Calling feature", postreq.id
    And print "Calling feature", postreq.getRandomValue()

  Scenario: To update by passing variable from another feature file
    * def getRandomValue = function(){return Math.floor(Math.random() * 1000)}
    * def id = getRandomValue()
    * def postreq = call read("../CreateJobEntry.feature") {_url:'https://reqres.in/', _path:'/api/users',_id:'(#id)'}
