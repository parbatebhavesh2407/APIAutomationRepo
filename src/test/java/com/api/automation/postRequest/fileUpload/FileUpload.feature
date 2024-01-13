Feature: To upload file using Karate Framework

  Background: Set the Base path
    Given url 'https://api.escuelajs.co/api/v1/files/upload'

  Scenario: To upload a file
    #location of file,name and content-type header value
    * multipart file file = { read:'FileToUpload.txt',filename:'FileToUpload.txt', Content-type:'multipart/form-data' }
    When method POST
    Then status 201
    And print response

  Scenario: To upload a file which is present inside datapackage (json file)
    #location of file,name and content-type header value
    * def fileLocation = '../dataPackage/JsonRequest8.json'
    * multipart file file = { read:'#(fileLocation)',filename:'JsonRequest8.json', Content-type:'multipart/form-data' }
    When method POST
    Then status 201
    And print response
