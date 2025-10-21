Feature: API Quantity Validation test scenarios
  Background:
    * url baseUrl

  Scenario: API Validation where Id !=null and verify JSON scheme
    * def companyData = read('classpath:testData/companyData.json')
    * def contactData = read('classpath:testData/contactData.json')
    * def addressesData = read('classpath:testData/addressesData.json')
    Given path 'v2/companies'
    When method GET
    Then status 200
    And match response.data[*].id != null





