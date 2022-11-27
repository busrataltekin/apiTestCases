@createUser

Feature: To create user information that will meet the requirements in restriction and type

  Background:

    Given Busra has got the request url to "POST" to "createUser"

  Scenario Outline: Busra should be able to get userId with valid data

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see that "userId" has assigned

    Examples:

    |firstName       |lastName       |username       |
    |"validFirstName"|"validLastName"|"validUsername"|

  Scenario Outline: Busra should be able to get 200 status code with valid data

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see the status code as <statusCode>

    Examples:

      |firstName       |lastName       |username       |statusCode|
      |"validFirstName"|"validLastName"|"validUsername"|200       |


  Scenario Outline: Busra should not be able to create user & get userId with an invalid firstName even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see that "userId" has not assigned

    Examples:

      |firstName                    |lastName                   |username                   |
      |"oneCharacterFirstName"      |"validLastName"            |"validUsername"            |
      |"fiftyOneCharacterFirstName" |"validLastName"            |"validUsername"            |
      |"alphaNumericFirstName"      |"validLastName"            |"validUsername"            |
      |"emptyFirstName"             |"validLastName"            |"validUsername"            |

  Scenario Outline: Busra should not be able to create user & get 200 status code with an invalid firstName even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see the status code as <statusCode>

    Examples:

      |firstName                    |lastName                   |username                   |statusCode  |
      |"oneCharacterFirstName"      |"validLastName"            |"validUsername"            |400         |
      |"fiftyOneCharacterFirstName" |"validLastName"            |"validUsername"            |400         |
      |"alphaNumericFirstName"      |"validLastName"            |"validUsername"            |400         |
      |"emptyFirstName"             |"validLastName"            |"validUsername"            |400         |

  Scenario Outline: Busra should not be able to create user & get userId with an invalid lastName even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see that "userId" has not assigned

    Examples:

      |firstName                    |lastName                   |username                   |
      |"validFirstName"             |"oneCharacterLastName"     |"validUsername"            |
      |"validFirstName"             |"fiftyOneCharacterLastName"|"validUsername"            |
      |"validFirstName"             |"alphaNumericLastName"     |"validUsername"            |
      |"validFirstName"             |"emptyLastName"            |"validUsername"            |


  Scenario Outline: Busra should not be able to create user & get 200 status code with an invalid lastName even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see the status code as <statusCode>

    Examples:

      |firstName                    |lastName                   |username                   |statusCode|
      |"validFirstName"             |"oneCharacterLastName"     |"validUsername"            |400       |
      |"validFirstName"             |"fiftyOneCharacterLastName"|"validUsername"            |400       |
      |"validFirstName"             |"alphaNumericLastName"     |"validUsername"            |400       |
      |"validFirstName"             |"emptyLastName"            |"validUsername"            |400       |



  Scenario Outline: Busra should not be able to create user & get userId with an invalid username even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see that "userId" has not assigned

    Examples:

      |firstName                    |lastName                   |username                   |
      |"validFirstName"             |"validLastName"            |"alphaOnlyUsername"        |
      |"validFirstName"             |"validLastName"            |"threeCharacterUsername"   |
      |"validFirstName"             |"validLastName"            |"thirteenCharacterUsername"|
      |"validFirstName"             |"validLastName"            |"emptyUsername"            |


  Scenario Outline: Busra should not be able to create user & get 200 status code with an invalid username even rest of data is valid

    Given Busra has selected <firstName>, <lastName>, <username> and "password"
    When  Busra sends POST request
    Then  Busra should see the status code as <statusCode>

    Examples:

      |firstName                    |lastName                   |username                   |statusCode|
      |"validFirstName"             |"validLastName"            |"alphaOnlyUsername"        |400       |
      |"validFirstName"             |"validLastName"            |"threeCharacterUsername"   |400       |
      |"validFirstName"             |"validLastName"            |"thirteenCharacterUsername"|400       |
      |"validFirstName"             |"validLastName"            |"emptyUsername"            |400       |




