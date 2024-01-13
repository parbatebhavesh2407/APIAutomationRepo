Feature: To validate Json Array

  Background: Setup Base URL
    Given url 'https://dummy.restapiexample.com'

  Scenario: To Validate json array
    Given path '/api/v1/employees'
    And header Accept = 'application/json'
    When method get
    Then status 200
    
		And match response.data[0].id == 1;
		And match response.data[1].employee_name == 'Garrett Winters'
		
		#validate json array
		And match response.data == '#[24]'
		
		#validate wildcard *
		#And match data[*].employee_name contains 'Cedric Kelly'

  Scenario: To Validate json array fuzzy matcher
    Given path '/api/v1/employees'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.data[0].id == '#present';
    And match response.data[0].id == '#notnull';
    And match response.data[0].employee_salary == '#number';
    And match response.message == '#string';
    
    
    
    
		
		