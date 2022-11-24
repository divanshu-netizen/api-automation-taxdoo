*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BASE_URL}=   https://gorest.co.in
${Content-Type}=  application/json
${bearerToken}=  b028b24ce2aae66f81ee0beefdb51bb4d53e759ff86a0187c2598988636683f1

*** Test Cases ***
Add_User
    create session  mysession  ${BASE_URL}
    ${body}=  create dictionary  id=22  email=ben_hannover@gmail.com  name=Benjamin  gender=male  status=active
    ${header}=  create dictionary  Content-Type=${Content-Type}  Authorization=Bearer ${bearerToken}

    ${response}  post request  mysession  /public/v2/users  data=${body}  headers=${header}

    log to console  ${response.status_code}
    log to console  ${response.content}

    ${status_code}  convert to string  ${response.status_code}
    should be equal  ${status_code}  201

    ${response_body}  convert to string  ${response.content}
    should contain  ${response_body}  Benjamin
    should contain  ${response_body}  male