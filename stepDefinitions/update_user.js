
const {Given} = require("@cucumber/cucumber")
const  setPutRequestBody = require ("../support/action/setPutRequestBody.js")
const elementMapping = require("../support/elementMapping.json")


Given('Busra has updated the information with {string} and {string}', async function (firstName, lastName) {

    reqBody =await setPutRequestBody.call(this,elementMapping[firstName],elementMapping[lastName])

});