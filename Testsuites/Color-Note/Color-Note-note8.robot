*** Settings ***
Library             AppiumLibrary
Variables           ../../desirecap/note-color-note.py
Resource            ../../Keywords/Color-Note/note-page.robot
Resource            ../../Keywords/Color-Note/tutorial-page.robot
Resource            ../../Keywords/Color-Note/side-bar-page.robot
Resource            ../../Keywords/Color-Note/home-page.robot
Resource            ../../Keywords/Color-Note/trash-can-page.robot

Suite Setup         open application    ${ximplerServerUrl}    udid=${desired_caps}[udid]
...                     platformName=${desired_caps}[platformName]
...                     platformVersion=${desired_caps}[platformVersion]
...                     app=${desired_caps}[app]
...                     deviceName=${desired_caps}[deviceName]
...                     automationName=${desired_caps}[automationName]
Suite Teardown      close application


*** Variables ***
${anime_name_note}      Naruto Dragon Ball Attack on titan
${anime_name_note_2}    Naruto Dragon Ball Attack on titan


*** Test Cases ***
Scenario : Add Note
    When Click Skip Button
    And Click add text button
    And Click text note area
    And Enter "${anime_name_note}" note
    And Go Back
    And Go Back
    Then System displays note title as "${anime_name_note}"
    And System displays text in note as "${anime_name_note}"

Scenario : Delete Note
    And Click add text button
    And Click text note area
    And Enter "${anime_name_note_2}" note
    And Go Back
    And Go Back
    When Click menu ... btn
    And Click delete button
    And Click ok button in delete modal
    And Click hamburger icon
    And Click trash can button
    Then trash can page displays text in note as "${anime_name_note_2}"
