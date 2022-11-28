

  Feature: To update user information

    Background:

      Given Busra has got the request url to "PUT" to "updateUsers"

      Scenario: Busra should be able to send PUT request

        Given Busra has updated the information with "newValidFirstName" and "newValidLastName"
        Given Busra sends PUT request






