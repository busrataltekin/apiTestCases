const {Given, When, Then} = require("@cucumber/cucumber")
const elementMapping = require ("../support/elementMapping.json")
const  setRequestBody = require ("../support/action/setPostRequestBody.js")
const getAddress = require("../support/action/getAddress")
const axios = require("axios");
const {expect} = require("chai");



Given('Busra has selected {string}, {string}, {string} and {string}', async function (firstName, lastName, username, password) {

 global.reqBody = await setRequestBody.call(this,elementMapping[firstName], elementMapping[lastName], elementMapping[username],elementMapping[password])
});

When('Busra has got the request url to {string} to {string}', async function (method, requestType) {

  global.address = await getAddress.call(this,method,requestType)


});
When('Busra sends {word} request', async function (method) {

  global.res= await axios(
        {
            method: method,
            url: address,
            data: reqBody,

        }
    ).then(response=>{
        return response
  })

});

Then('Busra should see the status code as {word}', async function (statusCode) {


    expect(res.status).to.have.equal(JSON.parse(statusCode))

});
Then('Busra should see that {string} has assigned', async function (userId) {

    expect(res.data.userId).to.have.not.equal([])

});
Then('Busra should see that {string} has not assigned', async function (userId) {

    expect(res.data.userId).to.have.equal([])
});



