
const elementMapping = require ("../elementMapping.json")
const {expect} = require("chai");

module.exports = async function(resObj,statusCode){

    expect(resObj).to.have.equal(JSON.parse(statusCode))
}