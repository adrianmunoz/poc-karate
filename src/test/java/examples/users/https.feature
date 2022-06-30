Feature: Casos de prueba de la funcionalidad de karate sobre https

  Background:
    * configure ssl = true

  Scenario: consulta un servicio rest. get. chequea http status = 200.
    Given url 'http://poc-karate-backend.herokuapp.com/api/karate/caso1'
    When method GET
    Then status 200


  Scenario: consulta un servicio rest. get. chequea http status = 200 y respuesta ok.
    Given url 'http://poc-karate-backend.herokuapp.com/api/karate/caso1'
    When method GET
    Then status 200

    When method get
    Then status 200
    And match response contains {"ok1":true}

#  Scenario: create a user and then get it by id
#    * def user =
#      """
#      {
#        "username": "testuser",
#        "email": "test@user.com",
#        "address": {
#          "street": "Has No Name",
#          "suite": "Apt. 123",
#          "city": "Electri",
#          "zipcode": "54321-6789"
#        }
#      }
#      """
#
#    Given url 'https://jsonplaceholder.typicode.com/users'
#    And request user
#    When method post
#    Then status 201
#
#    * def id = response.id
#    * print 'created id is: ', id
#
#    Given path id
#    # When method get
#    # Then status 200
#    # And match response contains user
#
#
# And match $ == {id:"1234",name:"John Smith"}
# And match $ == {id:"#notnull",name:"John Smith"}
#    And match $ contains {id:"#notnull"}
#
#
#    Given path '/name'
#    And request {name:'<name>'}
#    When method POST
#    Then status 200
#    And match $ == {length:'<length>'}
#
#    Examples:
#      | name  | length |
#      | Tim   | 3      |
#      | Liz   | 3      |
#      | Selma | 5      |
#      | Ted   | 3      |
#      | Luise | 5      |
#******************************
#  eature: Uploading a file
#
#  Background:
#    * url baseUrl
#
#  Scenario: Upload file
#
#    Given path '/'
#    And multipart field file = read('test.pdf')
#    And multipart field name = 'test.pdf'
#    When method POST
#    Then status 200
#    And match $ == {error: false, bytesUploaded:'#notnull'}
#
#    Given path '/'
#    And multipart field file = read('test1.pdf')
#    And multipart field name = 'test1.pdf'
#    When method POST
#    Then status 200
#    And match $ == {error: false, bytesUploaded:'#notnull'}
#
#
#  Scenario: List uploaded files
#
#    Given path '/'
#    When method GET
#    Then status 200
#    And match $.length() == 2
#*******************************************
#Feature: Login and register Tests on reqres.in
#  Background:
#    * def urlBase = 'https://reqres.in'
#    * def loginPath = '/api/login'
#  Scenario Outline: As a <description>, I want to get the corresponding response_code <status_code>
#    Given url urlBase + loginPath
#    And request { 'email': <username> , 'password': <password> }
#    When method POST
#    * print response
#    Then response.status == <status_code>
#    Examples:
#      |username |password | status_code | description |
#      |'eve.holt@reqres.in' |'cityslicka' | 200 | valid user |
#      |'eve.holt@reqres.in' |null | 400 | invalid user|
#
#Feature: Reusable Tests on reqres.in
#  Scenario: call post and delete with reusable features and delete with conditional operation
#    * table users
#      |name     |job       |
#      |'max'    |'tester1' |
#    * def result = call read('post2.feature') users
#    * def id = result[0].response.id
#    * table ids
#      |id|
#      |id|
#    * def res = result.responseStatus == 201 ? {} : karate.call('delete.feature', ids)
