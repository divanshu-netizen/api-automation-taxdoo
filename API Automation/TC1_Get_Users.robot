*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${BASE_URL}  https://gorest.co.in
${USER_ID}  30


*** Test Cases ***
Get_UserInfo
    create session  mysession  ${BASE_URL}
    ${response}  get request  mysession  /public/v2/users/${USER_ID}

    log to console  ${response.status_code}
    log to console  ================
    log to console  ${response.content}

    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  200

    ${body}=  convert to string  ${response.content}
    should contain  ${body}  Dev