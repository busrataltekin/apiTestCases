
@getUserById

Feature: To get information of a user by using his/her id

  Background:

    Given Busra has got the request url to "getByUserId" to "seeUser"

  Scenario: Busra should be able to see a user's data by using userID

    When Busra sends the GET request
    Then Busra should see the "userId"

    Scenario: busra should get 200 status code by fetching userID

      When Busra sends the GET request
      Then Busra should see the 200 status code


