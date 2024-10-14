Feature: Create A new Pet

  Background: The Request Body Configuration
    # Set a configuration for the payload
    * url baseUrl
    * def requestPayload = read('classpath:payload/pet.json')
    * set requestPayload.id = Java.type('utils.TestDataCreator').getID()
    * set requestPayload.name = Java.type('utils.TestDataCreator').getDogName()
    * set requestPayload.photoUrls[0] = Java.type('utils.TestDataCreator').getFileName()
    * set requestPayload.tags[0].name = requestPayload.name
    * set requestPayload.status = Java.type('utils.TestDataCreator').getStatus()[0]

  Scenario: Modificate information of new pet to the store
    Given header Content-Type = 'application/json'
    And path '/v2/pet'
    And request requestPayload
    When method post
    Then status 200
    And match response.id == '#present'
    And match $.name == requestPayload.name
    And match $.status == requestPayload.status
    * print response
    # find pet with ID
    Given header Content-Type = 'application/json'
    And path '/v2/pet/' + response.id
    When method get
    Then status 200
    And match $.id == requestPayload.id
    And match $.name == requestPayload.name
    * print response
    # update pet with other name and status "sold"
    * def newName = "Mai"
    * def newStatus = "sold"
    # Send the update request
    Given header Content-Type = 'application/x-www-form-urlencoded'
    And  path '/v2/pet/' + requestPayload.id
    And form field name = newName
    And form field status = newStatus
    When method post
    Then status 200
    * print response

    # find the same pet with name and status change
  Scenario Outline: Find pets by status
    Given header Content-Type = 'application/json'
    And path '/v2/pet/findByStatus'
    And params {status:<status>}
    When method get
    Then status 200
    And match response[0].status contains <status>
    * print response

    Examples:
      | status      |
      | 'sold'      |