Feature: To Execute Java Script Function

  Background: Create and Initialize Base URL
    Given url 'https://reqres.in/'

  Scenario: Execute Java Script Function with and without parameter
  	* def getInitValue = function() {return 10;}
  	Then print getInitValue()
  	* def getRandomValue = function(){return Math.floor(Math.random() * 1000)}
  	Then print getRandomValue()
  	* def getStringValue = function(args1) {return "hello"+ args1}
  	Then print "Function Value=>" ,getStringValue("BY")