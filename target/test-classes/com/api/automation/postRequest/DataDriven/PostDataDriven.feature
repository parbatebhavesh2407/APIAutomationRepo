Feature: To create job description in the test application

Background: Read the data for data driven
* def testdata = read("testData.csv")

Scenario Outline: To create job description in the test application <method>
	Given print '<url>'
	Then print '<path>'
	When print '<method>'
	And print '<status>'

Examples: 
	| url 											 | path 					| method | status
	|https://api.escuelajs.co/api|/v1/files/upload| post	 |201
	|https://dummy.restapiexample.com|/api/v1/employees|get|200

Scenario Outline: Data Driven for the Job description entry <Job>
	  Given url 'https://dummy.restapiexample.com'
	  And path '/api/users'
    And request {"name": "#(Name)", "job": "#(Job)","Dep": '#(Department)'}
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post
    Then status <Status>
    
Examples: 
	|Name|Job|Department|Status|
	|false|Officer|IT|405|
	
Scenario Outline: To create job description in the test application using external files
	  Given url 'https://dummy.restapiexample.com'
	  And path '/api/users'
    And request {"name": "#(Name)", "job": "#(Job)","Dep": '#(Department)'}
    And headers {Accept:'application/json', Content-type: 'application/json'}
    When method post

Examples: 
	#|testdata|
	|read("testData.csv")|