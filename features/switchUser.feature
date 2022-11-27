@switchUser
  Feature: To be able to update user activity by using userId

    Background:

      Given Busra has got the request url to "PATCH" to "switch"

      Scenario Outline: Busra should be able to switch the type of activity

        When  Busra sends the PATCH request for making userActivity as <activity>
        Then  Busra should see the activity as <activity>

        Examples:

        |activity    |
        |"false"     |
        |"true"      |


        Scenario Outline: Busra should get 200 status code after switching the type of activity

          When  Busra sends the PATCH request for making userActivity as <activity>
          Then  Busra should see the status code as 200

          Examples:

            |activity    |
            |"false"     |
            |"true"      |


          Scenario: Busra should not be able to send an input that is not a boolean parameter

            When  Busra sends the PATCH request for making userActivity as "xyzxyz"
            Then  Busra should not see the activity as "xyzxyz"
  
    
      Scenario: Busra should not get 200 status code after send an input that is not a boolean parameter

        When  Busra sends the PATCH request for making userActivity as "xyzxyz"
        Then  Busra should see the status code as 400

  







