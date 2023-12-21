*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             Collections
Resource            ../../Keywords/Aumation-ex/home-page.robot
Resource            ../../Keywords/Aumation-ex/sign-up-page.robot
Resource            ../../Keywords/Aumation-ex/signup-login-page.robot

Suite Setup         Open Browser    url=http://automationexercise.com    browser=chrome    options=add_argument("--headless")
Suite Teardown      Close Browser


*** Test Cases ***
Register User
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'New User Signup!' is visible
    Enter name
    Enter email
    Click 'Signup' button
    Verify 'ENTER ACCOUNT INFORMATION' is visible
    Fill details: Title, Name, Email, Password, Date of birth
    Select checkbox 'Sign up for our newsletter!
    Select checkbox 'Receive special offers from our partners!
    Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click 'Create Account button
    Click 'Continue' button
    Verify that 'Logged in as username' is visible
    Click 'Delete Account' button
    Verify that 'ACCOUNT DELETED!' is visible
