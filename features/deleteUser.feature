@deleteUserList
  Feature: To delete user from list

    Background:

      Given Busra has got the request url to "DEL" to "deleteUsers"

      Scenario: Busra should be able to delete a user

        When Busra sends the delete request
        Then Busra should not see user

        Scenario: Busra should get 204 as status code after making delete request

          When Busra sends the delete request
          Then Busra should see the status code as 204


    Scenario: Busra lists after deleting, she should not see the user she deleted

          Given Busra sends the delete request
          Given Busra has got the request url to "GET" to "listUsers"
          When  Busra sends the GET request
          Then  Busra should not see "userId"


    Scenario: Busra lists after deleting, she should not get successful status code

      Given Busra sends the delete request
      Given Busra has got the request url to "getByUserId" to "seeUser"
      When  Busra sends the GET request
      Then  Busra should see the status code as 403



