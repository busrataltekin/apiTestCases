module.exports = async function(firstName, lastName){

    let putReqBody = {}

    putReqBody.firstName=firstName
    putReqBody.lastName=lastName

    return putReqBody
}

