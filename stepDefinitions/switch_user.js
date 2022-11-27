const {Given,When,Then} = require("@cucumber/cucumber")
const setPatchRequestBody = require("../support/action/setPatchRequestBody")
const axios = require("axios");
const checkElementIsEqual = require("../support/check/checkElementIsEqual")
const {expect} = require("chai");


When('Busra sends the PATCH request for making userActivity as {string}', async function (type) {

    let stringType;
    let booleanValue = (stringType === type )

   const reqBody = await setPatchRequestBody.call(this,booleanValue)

  res=await axios.patch(address, reqBody)

});
Then('Busra should see the activity as {string}',async function (actResult) {

    await checkElementIsEqual.call(this,(JSON.stringify(res.data.isActive)),actResult)

});
Then('Busra should not see the activity as {string}', async function (notExpectedResult) {

    expect(JSON.stringify(res.data.isActive)).to.not.have.equal(notExpectedResult)

});