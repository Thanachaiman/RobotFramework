*** Settings ***
Library         SeleniumLibrary
Variables       ../Variables/web.py
Resource        ../Variables/myVariables.robot
Resource        ../Keywords/login.robot

Suite Setup     Open Browser    url=https://katalon-demo-cura.herokuapp.com/    browser=chrome


*** Test Cases ***
Verify login pass with invalid password
    Log To Console    Hello Donkey
    Click Element    xpath://*[@id="btn-make-appointment"]
    Input Text    xpath://*[@id="txt-username"]    ${VALIDNAME}
    Input Text    xpath://*[@id="txt-password"]    ${INVALIDPASSWORD}
    Click Element    xpath://*[@id="btn-login"]
    Location Should Be    https://katalon-demo-cura.herokuapp.com/profile.php#login

Verify login pass with invalid username
    Click Element    xpath://*[@id="btn-make-appointment"]
    Input Text    xpath://*[@id="txt-username"]    ${INVALIDNAME}
    Input Text    xpath://*[@id="txt-password"]    ${VALIDPASSWORD}
    Click Element    xpath://*[@id="btn-login"]
    Location Should Be    https://katalon-demo-cura.herokuapp.com/profile.php#login

Verify login pass with valid user
    Click Element    xpath://*[@id="btn-make-appointment"]
    Input Text    xpath://*[@id="txt-username"]    ${VALIDNAME}
    Input Text    xpath://*[@id="txt-password"]    ${VALIDPASSWORD}
    Click Element    xpath://*[@id="btn-login"]
    Location Should Be    https://katalon-demo-cura.herokuapp.com/#appointment
