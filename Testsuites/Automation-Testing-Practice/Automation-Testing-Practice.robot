*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             Collections
Resource            ../../Keywords/Automation-Testing-Practice/automation-testing-practice.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-pagination.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-tabs.robot
Resource            ../../Variables/automation-testing-practice.robot

Suite Setup         Open Browser    url=${global_url}    browser=${default_browser}    options=add_argument("--headless")
Suite Teardown      Close Browser


*** Test Cases ***
# Verify Data In Default Web
#    Verify that page is visible successfully
#    Enter name with ${user_data}[name]
#    Verify name is ${user_data}[name]
#    Enter email with ${user_data}[email]
#    Verify email is ${user_data}[email]
#    Enter phone with ${user_data}[phone]
#    Verify phone is ${user_data}[phone]
#    Enter address with ${user_data}[address]
#    Verify address is ${user_data}[address]
#    Select gender with ${user_data}[gender(male)]
#    Verify ${user_data}[gender(male)] is selected
#    Select check days with @{days}
#    Verify checkbox should be selected @{days}
#    Select country with ${country}
#    Verify selected country is ${country}
#    Select color with ${color}
#    Verify selected color is ${color}
#    Enter date with ${date}
#    Verify date is ${date}
#    Click link open cart
#    Verify url open cart
#    Go Back
#    Verify that page is visible successfully
#    Click link orange HRM
#    Verify url orange HRM
#    Go Back
#    Verify that page is visible successfully
#    Click hyperlink home
#    Verify data is clear

# Verify Data In Pagination Table
# Verify that page is visible successfully
# Verify pageination is default
# Chage pagination to page ${number_of_page}
# Verify pagination is page ${number_of_page}
# Select check box @{check_box} of page ${number_of_page}
# Verify check box @{check_box} of page ${number_of_page} should selected

Verify Data In Search Bar
    Verify that page is visible successfully
    Search with ${empty_data}
    Verify Please enter text to search is visible
    Search with ${anime_name}
    Verify search result of search is visible

Verify New Browser Window
