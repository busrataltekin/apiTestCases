module.exports = async function (firstName, lastName, username, password) {

let reqBody = {

}

reqBody.firstName=firstName
reqBody.lastName=lastName
reqBody.username=username
reqBody.password=password

    return reqBody
}

