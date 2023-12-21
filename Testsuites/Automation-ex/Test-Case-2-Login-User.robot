*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             Collections
Resource            ../../Keywords/Aumation-ex/home-page.robot
Resource            ../../Keywords/Aumation-ex/sign-up-page.robot
Resource            ../../Keywords/Aumation-ex/signup-login-page.robot
Resource            ../../Variables/userVariables.robot

Suite Setup         Open Browser    url=http://automationexercise.com    browser=chrome    options=add_argument("--headless")
Suite Teardown      Close Browser


*** Test Cases ***
Register User
    When Register USING API &{user_data}
    And Verify that home page is visible successfully
    And Click on 'Signup / Login' button
    Then Verify 'New User Signup!' is visible
    When Enter ${user_data}[email] and ${user_data}[password]
    And Click 'Login' button
    And Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible
