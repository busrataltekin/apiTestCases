
const {expect} = require("chai");


module.exports = async function(resObj, element){

    expect(resObj).to.have.not.equal(element)

}