# **TESTING CHALLENGE WITH CUCUMBER JS**

## Getting Started

### What did I use?

---

* [Node.js](https://nodejs.org/en/) 
* [Cucumber](https://cucumber.io/)
* [Playwright](https://playwright.dev/)

I created test tags for each feature under scripts in package.json. Thus, it can be run on a case-based basis. I also added a retry option to each tag. For a failed test, it runs as many times as the number of retry we assigned, and if it still gets an error, it states it as a fail. I determined the number of retry depending on the duration of the actions on the page and the number of tests, we run 3 retry in features with a large number of examples.

* If the test runs on retry, we can also see in the logs how many times it atempt. Thus, we get feedback on test automation.

## Running test 

* yarn run test -- overall testing
* yarn run createUser -- creating user tests
* yarn run deleteUser -- removing user tests
* yarn run switchUser -- switching user info
* yarn run updateUser -- updating user
* yarn run getUserList -- getting user list
* yarn run getUserById -- getting user by id


### Create User Scenarios

---
- Creating a user successfully
- Getting 200 status code after creating a user successfuly
---------------
- Getting fail because of using **one character first name** _min 2 charachters required_
- Getting 400 of using **one character first name**  _min 2 charachters required_
- Getting fail because of using **51 characters first name** _max 50 characters required_
- Getting 400 of using **51 characters first name** _max 50 characters required_
- Getting fail because of using **alphanumeric first name** _alpha only was required_
- Getting 400 of using **alphanumeric first name** _alpha only was required_
- Getting fail because of using **empty first name field** _input was required_
- Getting 400 of using  **empty first name field** _input was required_
---------------
- Getting fail because of using **one character last name** _min 2 charachters required_
- Getting 400 of using **one character last name**  _min 2 charachters required_
- Getting fail because of using **51 characters last name** _max 50 characters required_
- Getting 400 of using **51 characters last name** _max 50 characters required_
- Getting fail because of using **alphanumeric last name** _alpha only was required_
- Getting 400 of using **alphanumeric last name** _alpha only was required_
- Getting fail because of using **empty last name field** _input was required_
- Getting 400 of using  **empty last name field** _input was required_

-------

- Getting fail because of using **alpha only username** _alphanumeric was required_
- Getting 400 of using **alpha only username** _alphanumeric was required_
- Getting fail because of using **13 characters username** _max 12 characters required_
- Getting 400 of using **13 characters username** _max 13 characters required_
- Getting fail because of using **3 characters username** min 4 characters required_
- Getting 400 of using **3 characters username** min 4 characters required_
- Getting fail because of using **empty username field** _input was required_
- Getting 400 of using  **empty username field** _input was required_


### Getting User List

---

- Getting user list successfully
- Getting 200 status code after getting user list successfully

---

- Getting fail, because a newly created user is expected to appear in the list
- For a newly created user to be seen in the list, it returns 200 
   - _Even though we can't insert a new user, we get the 200 status code,then test passes_
   
### Getting User By ID

---

- Querying with ID and correct return of reponse
- Getting 200 status code

### Deleting User

---

- Deleting a user successfully

---

- Getting fail, because expecting 204 status code
- Getting fail because after deleting the user, continue to see the deleted user when the user takes the listing action
- Getting fail because after deleting the user, when I get user by id, it returns 200 while waiting for 403

---

### Switch User Activity

---

- While "isActive" : true, sending true boolean value
- Getting 200 status code 
- Sending string value instead of boolean

-----

- Getting fail because of, while "isActive" : true, sending false boolean value, then cannot see false value in response
- Getting fail because expecting 400, getting 200

----

- Getting fail because of getting 200 status code after sending string value instead of boolean
 
### Update User

---

- Updating successfully user with 2 characters firstname
- Getting 200 status code after updating with 2 characters firstname
- Updating successfully user with 2 characters lastname
- Getting 200 status code after updating with 2 characters firstname
- Updating successfully user with 50 characters lastname
- Getting 200 status code after updating with 2 characters firstname
- Updating successfully user with 50 characters firstname
- Getting 200 status code after updating with 2 characters firstname

---

- Getting fail because updating user with numeric firstname
- Getting fail because expecting 400 with numeric firstname
- Getting fail because updating user with fifty one character firstname
- Getting fail because expecting 400 with fifty one character firstname
- Getting fail because updating user's firstname as empty
- Getting fail because expecting 400 with empty firstname


---

- Getting fail because updating user with numeric lastname
- Getting fail because expecting 400 with numeric lastname
- Getting fail because updating user with fifty one character lastname
- Getting fail because expecting 400 with fifty one character lastname
- Getting fail because updating user's lastname as empty
- Getting fail because expecting 400 with empty lastname










