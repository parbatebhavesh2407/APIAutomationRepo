Feature: To test the GET endpoint of the application

Scenario: To test the GET endpoint with the JSON data
	Given the application url 'www.google.com'
	And the context path is '/getdata'
	When I send the get request
	Then status code should be 200
	And the response format should be in JSON
