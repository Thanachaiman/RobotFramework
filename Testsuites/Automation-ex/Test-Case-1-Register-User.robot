*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             Collections
Resource            ../../Keywords/Aumation-ex/home-page.robot
Resource            ../../Keywords/Aumation-ex/sign-up-page.robot
Resource            ../../Keywords/Aumation-ex/signup-login-page.robot
Resource            ../../Variables/automatation-ex-Variables.robot

Suite Setup         Open Browser    url=${global_url}    browser=${default_browser}    options=add_argument("--headless")
Suite Teardown      Close Browser


*** Test Cases ***
Register User
    When Verify that home page is visible successfully
    And Click on 'Signup / Login' button
    Then Verify 'New User Signup!' is visible
    When Enter name with ${user_data}[username]
    And Enter email with ${user_data}[email]
    And Click 'Signup' button
    Then Verify 'ENTER ACCOUNT INFORMATION' is visible
    When Fill details data with: &{user_data}
    And Select checkbox 'Sign up for our newsletter!
    And Select checkbox 'Receive special offers from our partners!
    And Fill details address with: &{user_data}
    And Click 'Create Account button
    And Click 'Continue' button
    Then Verify that 'Logged in as ${user_data}[username]' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible
