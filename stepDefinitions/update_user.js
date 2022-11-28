
const {Given, Then} = require("@cucumber/cucumber")
const  setPutRequestBody = require ("../support/action/setPutRequestBody.js")
const elementMapping = require("../support/elementMapping.json")
const checkElementIsEqual = require("../support/check/checkElementIsEqual")
const checkElementIsNotEqual = require("../support/check/checkElementIsNotEqual")




Given('Busra has updated the information with {string} and {string}', async function (firstName, lastName) {

    reqBody =await setPutRequestBody.call(this,elementMapping[firstName],elementMapping[lastName])

});
Then('Busra should see the {string} in response', async function (newFirstName) {

    await checkElementIsEqual.call(this,resBody.data.firstName,elementMapping[newFirstName])

});
Then('Busra should not see the {string} in response', async function (notExpectedName) {

    if(notExpectedName === "firstName")

    await checkElementIsNotEqual.call(this,resBody.data.firstName,elementMapping[notExpectedName])

    else

        await checkElementIsNotEqual.call(this,resBody.data.lastName,elementMapping[notExpectedName])

});