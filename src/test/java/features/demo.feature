Feature: Casos de prueba de la funcionalidad de karate sobre https

  Background:
    * configure ssl = true

  Scenario: consulta un servicio rest. get. chequea http status = 200.
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method GET
    Then status 200


  Scenario: consulta un servicio rest. get. chequea http status = 200 y respuesta ok.
    Given url 'https://jsonplaceholder.typicode.com/users'
    When method GET
    Then status 200

    When method get
    Then status 200
    And match response contains {"id":1}


  Scenario: create a user and then get it by id
    * def user =
      """
      {
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id


