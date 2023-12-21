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
    When Verify that home page is visible successfully
    And Click on 'Signup / Login' button
    And Verify 'New User Signup!' is visible
    And Enter name with ${user_data}[username]
    And Enter email with ${user_data}[email]
    And Click 'Signup' button
    Then Verify 'ENTER ACCOUNT INFORMATION' is visible
    When Fill details data with: ${user_data}[title], ${user_data}[name], ${user_data}[password], ${user_data}[date], ${user_data}[month], ${user_data}[year]
    And Select checkbox 'Sign up for our newsletter!
    And Select checkbox 'Receive special offers from our partners!
    And Fill details address with: ${user_data}[first_name], ${user_data}[last_name], ${user_data}[company], ${user_data}[address1], ${user_data}[address2], ${user_data}[country], ${user_data}[state], ${user_data}[city], ${user_data}[zipcode], ${user_data}[mobile_number]
    And Click 'Create Account button
    And Click 'Continue' button
    Then Verify that 'Logged in as ${user_data}[username]' is visible
    When Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible
