Feature: API Validation row
  Background:
    * url baseUrl

  Scenario: API validation for companies with 1 row of data as requested
    Given path 'v2/companies'
    And param _quantity = 1
    When method GET
    Then status 200
    * print response.data

  Scenario: API validation for companies with 1 row of data as requested
    Given path 'v2/companies'
    And param _quantity = 5
    When method GET
    Then status 200
    * print response.data

  Scenario: API validation for companies with 1 row of data as requested
    Given path 'v2/companies'
    And param _quantity = 20
    When method GET
    Then status 200
    * print response.data