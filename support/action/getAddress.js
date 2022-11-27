require("dotenv").config()
const elementMapping = require ("../elementMapping.json")


module.exports = async function(method){

    let baseUrl = process.env.BASE_URL

  if (method === 'POST') {

      return baseUrl
  }

  else if(method ==='GET'){

      return baseUrl
  }

    else if(method === 'PATCH'){

        return baseUrl + "/" + elementMapping["userId"] + "/" + "activity"
  }

    else
        return baseUrl + "/" + elementMapping["userId"]








}