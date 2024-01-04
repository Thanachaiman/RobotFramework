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
    Given Verify that the page is successfully visible.
    When Enter name with ${user_data}[name]
    Then Verify name is ${user_data}[name]
    When Enter email with ${user_data}[email]
    Then Verify email is ${user_data}[email]
    When Enter phone with ${user_data}[phone]
    Then Verify phone is ${user_data}[phone]
    When Enter address with ${user_data}[address]
    Then Verify address is ${user_data}[address]
    When Select gender with ${user_data}[gender(male)]
    Then Verify ${user_data}[gender(male)] is selected
    When Select check days with @{days}
    Then Verify checkbox should be selected @{days}
    When Select country with ${country}
    Then Verify selected country is ${country}
    When Select color with ${color}
    Then Verify selected color is ${color}
    When Enter date with ${date}
    Then Verify date is ${date}
    When Click link open cart
    Then Verify url open cart
    When Go Back
    Then Verify that the page is successfully visible.
    When Click link orange HRM
    Then Verify url orange HRM
    When Go Back
    Then Verify that the page is successfully visible.
    When Click hyperlink home
    Then Verify data is clear

Verify that the Pagination is working properly.
    When Verify that the page is successfully visible.
    Then Verify pageination is default
    When Chage pagination to page ${number_of_page}
    Then Verify pagination is page ${number_of_page}
    When Select check box @{check_box} of page ${number_of_page}
    Then Verify check box @{check_box} of page ${number_of_page} should selected

Verify that the Search Bar is working properly.
    Given Verify that the page is successfully visible.
    When Search with ${empty_data}
    Then Verify Please enter text to search is visible
    When Search with ${anime_name}
    Then Verify search result of search is visible

Verify New Browser Window is working properly.
    Given Verify that the page is successfully visible.
    When Click New Windows Browser button
    Then Verify New Browser Is Opened
    When Switch browser to browser ${browser_number}

Verify JS Alerts is working properly.
    Given Verify that the page is successfully visible.
    When Click Alert Button
    Then Verify Alert Should Be Present
    When Click Confirm Box Button
    And Click Confirm In Alert
    Then Verify Text You pressed OK! should be visible
    When Click Confirm Box Button
    And Click Dismiss In Alert
    Then Verify Text You pressed Cancel! should be visible
    When Click Prompt Button
    And Input ${text} Into Alerts
    Then Verify Text Hello ${text}! How are you today? should be visible
    When Click Prompt Button
    And Input ${text} Into Alerts And Select DISMISS
    Then Verify Text User cancelled the prompt. should be visible

Verify Double Click Action is working properly.
    Given Verify that the page is successfully visible.
    When Clear Text Form Field1
    And Input ${text} Into Field1
    And Double Click on Copy Text Button
    Then Verify text text from Field1 copied into Field2.

Verify Drag And Drop / Slider Action
    Given Verify that the page is successfully visible.
    When Drag And Drop Box
    Then Verify Action Drag And Drop is successfull
    When Drag Slider in X axis ${side} px
    Then Verify Slider in X axis ${side} px

Verify Frame is working properly.
    Given Verify that the page is successfully visible.
    When Enter name in frame with ${user_data}[name]
    And Enter date in frame with ${date}
    And Select country in frame with ${user_data}[job]
    And Click Submit Button In Frame
    Then Verify Text An error has occurred should be visible

# use 5555555555

Verify Resize element is working properly.
    Given Unselect Frame
    When Resize Element in x axis with: ${x_axis} and y axis with: ${y_axis}
    Then Verify Element is resized
    Given Verify that the page is successfully visible.
