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
    Register USING API
    # Verify that home page is visible successfully
    # Click on 'Signup / Login' button
    # Verify 'New User Signup!' is visible
    # Enter correct email address and password
    # Click 'Delete Account' button
    # Verify that 'ACCOUNT DELETED!' is visible
