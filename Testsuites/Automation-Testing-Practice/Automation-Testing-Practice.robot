*** Settings ***
Library             SeleniumLibrary
Library             RequestsLibrary
Library             Collections
Resource            ../../Keywords/Automation-Testing-Practice/automation-testing-practice.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-pagination.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-tabs.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-new-windows.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-alerts.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-double-click.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-drag-and-drop.robot
Resource            ../../Keywords/Automation-Testing-Practice/automation-frame.robot
Resource            ../../Variables/automation-testing-practice.robot

# Suite Setup    Open Browser    url=${global_url}    browser=${default_browser}
Suite Setup         Open Browser    url=${global_url}    browser=${default_browser}    options=add_argument("--headless")
Suite Teardown      Close Browser


*** Test Cases ***
Verify that the website is working properly.
    Verify that the page is successfully visible.
    Enter name with ${user_data}[name]
    Verify name is ${user_data}[name]
    Enter email with ${user_data}[email]
    Verify email is ${user_data}[email]
    Enter phone with ${user_data}[phone]
    Verify phone is ${user_data}[phone]
    Enter address with ${user_data}[address]
    Verify address is ${user_data}[address]
    Select gender with ${user_data}[gender(male)]
    Verify ${user_data}[gender(male)] is selected
    Select check days with @{days}
    Verify checkbox should be selected @{days}
    Select country with ${country}
    Verify selected country is ${country}
    Select color with ${color}
    Verify selected color is ${color}
    Enter date with ${date}
    Verify date is ${date}
    Click link open cart
    Verify url open cart
    Go Back
    Verify that the page is successfully visible.
    Click link orange HRM
    Verify url orange HRM
    Go Back
    Verify that the page is successfully visible.
    Click hyperlink home
    Verify data is clear

Verify that the Pagination is working properly.
    Verify that the page is successfully visible.
    Verify pageination is default
    Chage pagination to page ${number_of_page}
    Verify pagination is page ${number_of_page}
    Select check box @{check_box} of page ${number_of_page}
    Verify check box @{check_box} of page ${number_of_page} should selected

Verify that the Search Bar is working properly.
    Verify that the page is successfully visible.
    Search with ${empty_data}
    Verify Please enter text to search is visible
    Search with ${anime_name}
    Verify search result of search is visible

Verify New Browser Window is working properly.
    Verify that the page is successfully visible.
    Click New Windows Browser button
    Verify New Browser Is Opened
    Switch browser to browser ${browser_number}

Verify JS Alerts is working properly.
    Verify that the page is successfully visible.
    Click Alert Button
    Verify Alert Should Be Present
    Click Confirm Box Button
    Click Confirm In Alert
    Verify Text You pressed OK! should be visible
    Click Confirm Box Button
    Click Dismiss In Alert
    Verify Text You pressed Cancel! should be visible
    Click Prompt Button
    Input ${text} Into Alerts
    Verify Text Hello ${text}! How are you today? should be visible
    Click Prompt Button
    Input ${text} Into Alerts And Select DISMISS
    Verify Text User cancelled the prompt. should be visible

Verify Double Click Action is working properly.
    Verify that the page is successfully visible.
    Clear Text Form Field1
    Input ${text} Into Field1
    Double Click on Copy Text Button
    Verify text text from Field1 copied into Field2.

Verify Drag And Drop / Slider Action
    Verify that the page is successfully visible.
    Drag And Drop Box
    Verify Action Drag And Drop is successfull
    Drag Slider in X axis ${side} px
    Verify Slider in X axis ${side} px

Verify Frame is working properly.
    Verify that the page is successfully visible.
    Enter name in frame with ${user_data}[name]
    Enter date in frame with ${date}
    Select country in frame with ${user_data}[job]
    Click Submit Button In Frame
    Verify Text An error has occurred should be visible

Verify Resize element is working properly.
    Unselect Frame
    Resize Element in x axis with: ${x_axis} and y axis with: ${y_axis}
    Verify Element is resized
