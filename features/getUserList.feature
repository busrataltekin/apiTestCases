@getUserList
  Feature: To get user list in all cases


    Background:

      Given Busra has got the request url to "GET" to "listUsers"

    Scenario: Busra should be able to access the user list after making a request

      When Busra sends the GET request
      Then Busra should see that user list is not null


    Scenario: Busra should get 200 status after making a request

      When Busra sends the GET request
      Then Busra should see the 200 status code


      Scenario: Busra should see the user she created later in the list

        Given Busra has selected "newValidFirstName", "newValidLastName", "newValidUsername" and "password"
        Given Busra sends post request
        When  Busra sends get request
        Then Busra should see the "newValidFirstName" in list

    #Controversial Scenario is below,
    #Even though we can't insert a new user, we get the 200 status code,then test passes,
      # so it would be conceivable to combine the scenario here with the inserting scenario above.
        # However, since I approached it with micro feature logic, I did not combine it because I thought it would be more accurate to proceed in this way.
          # In fact, here we see the importance of test coverage.

    Scenario: Busra should get 200 status after listing the new user request
      Given Busra has selected "newValidFirstName", "newValidLastName", "newValidUsername" and "password"
      Given Busra sends post request
      When  Busra sends get request
      Then  Busra should see the status code as 200











