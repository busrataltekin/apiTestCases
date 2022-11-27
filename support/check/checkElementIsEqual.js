

const elementMapping = require ("../elementMapping.json")
const {expect} = require("chai");

module.exports = async function(response, expectedResponseObject){

    expect(response).to.have.equal(expectedResponseObject)
}