Feature: Variable creation in Karate Framework

  # syntax <Gherkin Keyword> <def> <variable_name> = <value>
  # * <def> <variable_name> = <value>
	Background:
	* def app_name = "BY Transport Manager"
	
  Scenario: To create a variable
    # Use variable for repeating values
    # Storing the data from a external file
    # In the matcher expression
    # Passing the data from one feature file to another
    Given def var_int = 10;
    And def var_string = "Project"
    Then print "int variable", var_int
    And print "string variable", var_string
    * def emp_name = "ABC Ltd"
    And print "Employee Name", emp_name

Scenario: To create a variable
		Given print "Previous Scenario", app_name
