const {When, Then} = require("@cucumber/cucumber")
const axios = require("axios");
const {expect} = require("chai");
const checkStatusCodeIsEqual = require("../support/check/checkStatusCodeIsEqual")
const checkElementIsEqual = require("../support/check/checkElementIsEqual")
const elementMapping = require("../support/elementMapping.json")

When('Busra sends the GET request', async function () {

global.resBody= await axios.get(address)

});

Then('Busra should see that user list is not null', async function () {

    expect(resBody.data).to.have.not.equal([])
});
Then('Busra should see the {word} status code',async function (status) {

    await checkStatusCodeIsEqual.call(this,resBody.status,status)
});
Then('Busra should see the {string} in list', async function (expectedFirstName) {


    const obj = res.data.find(firstname=>firstname.firstName === elementMapping[expectedFirstName])

    await checkElementIsEqual.call(this,obj.firstName,elementMapping[expectedFirstName])

});

Then('Busra should see the {string}', async function (user) {

    expect(resBody.data[0].id).to.have.equal(elementMapping[user])

});