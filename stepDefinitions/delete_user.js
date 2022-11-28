const {When,Then} = require("@cucumber/cucumber")
const elementMapping = require("../support/elementMapping.json")
const axios = require("axios");
const {expect} = require("chai");
const checkElementIsNotEqual = require("../support/check/checkElementIsNotEqual")


When('Busra sends the delete request', async function () {

    res=await axios.delete(address)
});

Then('Busra should not see {string}', async function (user) {


    expect(resBody.data[0].id).to.have.not.equal(elementMapping[user])

});
Then('Busra should not see user after deleting', async function () {

    await checkElementIsNotEqual.call(this,res.data,[])

});