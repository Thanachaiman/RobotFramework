*** Settings ***
Library  SeleniumLibrary   
Variables  ../Variables/web.py
Resource    ../Variables/myVariables.robot
Resource  ../Keywords/login.robot

Suite Setup                Open Browser          url=https://katalon-demo-cura.herokuapp.com/    browser=chrome
Suite Teardown             Close browser

*** Keywords ***
Verify login with ${username} and ${password}
    Click Element            xpath://*[@id="btn-make-appointment"]
    Input Text               xpath://*[@id="txt-username"]  ${username}
    Input Text               xpath://*[@id="txt-password"]  ${password}
    Click Element            xpath://*[@id="btn-login"]

*** Test Cases ***
Verify login pass with invalid password
    Verify login with ${VALIDNAME} and ${INVALIDPASSWORD}
    Location Should Be       https://katalon-demo-cura.herokuapp.com/profile.php#login


Verify login pass with invalid username
    Verify login with ${INVALIDNAME} and ${VALIDPASSWORD}
    Location Should Be       https://katalon-demo-cura.herokuapp.com/profile.php#login


Verify login pass with valid user
    Verify login with ${VALIDNAME} and ${VALIDPASSWORD}
    Location Should Be       https://katalon-demo-cura.herokuapp.com/#appointment 