@updateUser

  Feature: To update user information

    Background:

      Given Busra has got the request url to "PUT" to "updateUsers"

      Scenario Outline: Busra should be able to send PUT request

        Given Busra has updated the information with <firstName> and <lastName>
        Given Busra sends PUT request
        Given Busra has got the request url to "getByUserId" to "seeUser"
        When  Busra sends the GET request
        Then  Busra should see the <firstName> in response

        Examples:

          |firstName                   |lastName                    |
          |"newValidFirstName"         |"newValidFirstName"         |
          |"twoCharactersFirstName"    |"twoCharactersLastName"     |
          |"fiftyCharactersFirstName"  |"fiftyCharactersLastName" |


    Scenario Outline: Busra should get 200 status code after updating user

          Given Busra has updated the information with <firstName> and <lastName>
          When  Busra sends PUT request
          Then  Busra should see the status code as 200

          Examples:

          |firstName                   |lastName                  |
          |"newValidFirstName"         |"newValidFirstName"       |
          |"twoCharactersFirstName"    |"twoCharactersLastName"   |
          |"fiftyCharactersFirstName"  |"fiftyCharactersLastName" |


      Scenario Outline: Busra should not be able to put invalid firstName

        Given Busra has updated the information with <firstName> and <lastName>
        Given Busra sends PUT request
        Given Busra has got the request url to "getByUserId" to "seeUser"
        When  Busra sends the GET request
        Then  Busra should not see the <firstName> in response

        Examples:

          |firstName                   |lastName           |
          |"123"                       |"newValidLastName" |
          |"j"                         |"newValidLastName" |
          |"fiftyOneCharacterFirstName"|"newValidLastName" |
          |"emptyFirstName"            |"newValidLastName" |


    Scenario Outline: Busra should not be able to put invalid lastName

      Given Busra has updated the information with <firstName> and <lastName>
      Given Busra sends PUT request
      Given Busra has got the request url to "getByUserId" to "seeUser"
      When  Busra sends the GET request
      Then  Busra should not see the <lastName> in response

      Examples:

        |firstName          |lastName                    |
        |"newValidLastName" |"numericName"               |
        |"newValidLastName" |"oneCharacterName"          |
        |"newValidLastName" |"fiftyOneCharacterLastName" |
        |"newValidLastName" |"emptyLastName"             |


      Scenario Outline: Busra should get 400 status code after trying to send invalid firstName

        Given Busra has updated the information with <firstName> and <lastName>
        When  Busra sends PUT request
        Then  Busra should see the status code as 400

        Examples:

          |firstName                     |lastName            |
          |"numericName"                 |"newValidLastName"  |
          |"oneCharacterName"            |"newValidLastName"  |
          |"fiftyOneCharacterFirstName"  |"newValidLastName"  |
          |"emptyFirstName"              |"newValidLastName"  |


    Scenario Outline: Busra should get 400 status code after trying to send invalid lastName

      Given Busra has updated the information with <firstName> and <lastName>
      When  Busra sends PUT request
      Then  Busra should see the status code as 400

      Examples:

        |firstName            |lastName                     |
        |"newValidFirstName"  |"numericName"                |
        |"newValidFirstName"  |"oneCharacterName"           |
        |"newValidFirstName"  |"fiftyOneCharacterLastName"  |
        |"newValidFirstName"  |"emptyLastName"              |








