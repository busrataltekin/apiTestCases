
const elementMapping = require ("../elementMapping.json")
const {expect} = require("chai");


module.exports = async function(resObj){

    expect(resObj).to.have.not.equal([])

}