Feature: To get the variable set by karate-config.js file

  Background: 
    * def localvar = myVarName

  Scenario: karate-config.js
    * def userr = userName
    And print "Scenario from karate.config.js", userr
    And print "Variable==>", localvar
